# rpl_uav

# Only adds the argument to $HOME/.bashrc if the line is not there yet
addToBashrc() {
  if ! grep -qF "$1" "$HOME/.bashrc"; then
    echo "$1" >> $HOME/.bashrc
  fi
}

# Mavros, Mavlink, and PX4
wstool init src
sudo apt-get install python-catkin-tools python-rosinstall-generator -y
wstool init ~/rpl_ws/src
wstool update -t src -j4
rosdep install --from-paths src --ignore-src -y
source ./src/mavros/mavros/scripts/install_geographiclib_datasets.sh

cd ~/rpl_ws/src/px4
make posix_sitl_default gazebo

addToBashrc "source \$HOME/rpl_ws/devel/setup.bash"