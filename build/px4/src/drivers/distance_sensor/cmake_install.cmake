# Install script for directory: /home/idris/catkin_ws/src/px4/src/drivers/distance_sensor

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/idris/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "RelWithDebInfo")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/idris/catkin_ws/build/px4/src/drivers/distance_sensor/ll40ls/cmake_install.cmake")
  include("/home/idris/catkin_ws/build/px4/src/drivers/distance_sensor/mb12xx/cmake_install.cmake")
  include("/home/idris/catkin_ws/build/px4/src/drivers/distance_sensor/sf0x/cmake_install.cmake")
  include("/home/idris/catkin_ws/build/px4/src/drivers/distance_sensor/sf1xx/cmake_install.cmake")
  include("/home/idris/catkin_ws/build/px4/src/drivers/distance_sensor/srf02/cmake_install.cmake")
  include("/home/idris/catkin_ws/build/px4/src/drivers/distance_sensor/teraranger/cmake_install.cmake")
  include("/home/idris/catkin_ws/build/px4/src/drivers/distance_sensor/tfmini/cmake_install.cmake")
  include("/home/idris/catkin_ws/build/px4/src/drivers/distance_sensor/ulanding/cmake_install.cmake")
  include("/home/idris/catkin_ws/build/px4/src/drivers/distance_sensor/leddar_one/cmake_install.cmake")
  include("/home/idris/catkin_ws/build/px4/src/drivers/distance_sensor/vl53lxx/cmake_install.cmake")
  include("/home/idris/catkin_ws/build/px4/src/drivers/distance_sensor/pga460/cmake_install.cmake")

endif()

