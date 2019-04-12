#!/bin/bash

uav_PID=""
rosbag_PID=""
date=`date +"%Y-%m-%d %T"`

save_flight()
{
    save_flight=""
    while [ "$save_flight" != "y" ] && [ "$save_flight" != "n" ]; do
        read -p "Do you want to save this flight? (y or press ENTER/n) " save_flight

        if [ "$save_flight" = "y" ] || [ "$save_flight" = "" ]; then
            read -p "Bag name (Default: flight_[CURRENT TIME]): " bag_name
            bag_name=${bag_name:-"flight"}
            bag_name=$bag_name"_"$date
            echo "Please wait while compressing bag"
            mv $HOME/bags/active/flight.bag $HOME/bags/active/$bag_name.bag
            rosbag compress --bz2 --output-dir=$HOME/bags/processed/ $HOME/bags/active/$bag_name.bag
            
            echo "TODO: Check if the compressed bag is working before removing original"
            
            echo "Removing original (uncompressed) bag now"
            
            rm $HOME/bags/active/$bag_name.bag
            break
        fi

        if [ "$save_flight" = "n" ]; then
            # read -p "Are you sure you do not want to save this flight? (y/n or press ENTER) " save_flight
            # if [ "$save_flight" = "y" ] || [ "$save_flight" = "" ]; then
            # break
            # fi
            # save_flight=""
            echo "Removing bag"
            rm $HOME/bags/active/flight.bag
        fi
    done
}

wait_flying()
{
    flying=""
    while [ "$flying" != $1 ]; do
        sleep 1
        flying=`rostopic echo -n 1 /mavros/state/armed`
        flying="${flying/---/}"
        # Remove leading whitespace characters
        flying="${flying#"${flying%%[![:space:]]*}"}"
        # Remove trailing whitespace characters
        flying="${flying%"${flying##*[![:space:]]}"}"
    done
}

end_recording()
{
    if [ "$uav_PID" != "" ]; then
        pkill -INT -P $uav_PID
        # So we do not accidentally exit something in the future
        uav_PID=""
    fi
    if [ "$rosbag_PID" != "" ]; then
        pkill -INT -P $rosbag_PID
        # So we do not accidentally exit something in the future
        rosbag_PID=""
    fi

    sleep 1

    save_flight
}

handler()
{
    # This handler ends the recording and
    # closes all child processes before
    # exiting
    end_recording
    exit
}

# Trap in case something does CTRL-C
trap handler SIGINT SIGTERM

while [ true ]; do
    # We have to save the PID so therefore we ignore SIGINT and SIGTERM
    trap "" SIGINT SIGTERM
    roslaunch rpl old_uav.launch
    uav_PID=$!
    # Trap in case something does CTRL-C
    trap handler SIGINT SIGTERM

    if [ -f $HOME/bags/active/flight.bag ]; then
        echo "File found at:" $HOME/bags/active/flight.bag
        echo "Move it before flying for it to not be overwritten"
    fi

    # Start the rosbag when we start flying
    wait_flying "True"

    echo "Starting ROS record"

    date=`date +"%Y-%m-%d %T"`
    # We have to save the PID so therefore we ignore SIGINT and SIGTERM
    trap "" SIGINT SIGTERM
    rosbag record -a -x "/camera/(.*)" -O $HOME/bags/active/flight.bag &
    rosbag_PID=$!
    # Trap in case something does CTRL-C
    trap handler SIGINT SIGTERM

    # Wait until we have stopped flying
    wait_flying "False"

    # End recording
    end_recording

done
