# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "dd_control: 1 messages, 0 services")

set(MSG_I_FLAGS "-Idd_control:/home/idris/catkin_ws/src/dd_control/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(dd_control_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/idris/catkin_ws/src/dd_control/msg/Velocity.msg" NAME_WE)
add_custom_target(_dd_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dd_control" "/home/idris/catkin_ws/src/dd_control/msg/Velocity.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(dd_control
  "/home/idris/catkin_ws/src/dd_control/msg/Velocity.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dd_control
)

### Generating Services

### Generating Module File
_generate_module_cpp(dd_control
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dd_control
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(dd_control_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(dd_control_generate_messages dd_control_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/idris/catkin_ws/src/dd_control/msg/Velocity.msg" NAME_WE)
add_dependencies(dd_control_generate_messages_cpp _dd_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dd_control_gencpp)
add_dependencies(dd_control_gencpp dd_control_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dd_control_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(dd_control
  "/home/idris/catkin_ws/src/dd_control/msg/Velocity.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dd_control
)

### Generating Services

### Generating Module File
_generate_module_eus(dd_control
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dd_control
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(dd_control_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(dd_control_generate_messages dd_control_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/idris/catkin_ws/src/dd_control/msg/Velocity.msg" NAME_WE)
add_dependencies(dd_control_generate_messages_eus _dd_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dd_control_geneus)
add_dependencies(dd_control_geneus dd_control_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dd_control_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(dd_control
  "/home/idris/catkin_ws/src/dd_control/msg/Velocity.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dd_control
)

### Generating Services

### Generating Module File
_generate_module_lisp(dd_control
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dd_control
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(dd_control_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(dd_control_generate_messages dd_control_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/idris/catkin_ws/src/dd_control/msg/Velocity.msg" NAME_WE)
add_dependencies(dd_control_generate_messages_lisp _dd_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dd_control_genlisp)
add_dependencies(dd_control_genlisp dd_control_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dd_control_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(dd_control
  "/home/idris/catkin_ws/src/dd_control/msg/Velocity.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dd_control
)

### Generating Services

### Generating Module File
_generate_module_nodejs(dd_control
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dd_control
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(dd_control_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(dd_control_generate_messages dd_control_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/idris/catkin_ws/src/dd_control/msg/Velocity.msg" NAME_WE)
add_dependencies(dd_control_generate_messages_nodejs _dd_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dd_control_gennodejs)
add_dependencies(dd_control_gennodejs dd_control_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dd_control_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(dd_control
  "/home/idris/catkin_ws/src/dd_control/msg/Velocity.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dd_control
)

### Generating Services

### Generating Module File
_generate_module_py(dd_control
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dd_control
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(dd_control_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(dd_control_generate_messages dd_control_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/idris/catkin_ws/src/dd_control/msg/Velocity.msg" NAME_WE)
add_dependencies(dd_control_generate_messages_py _dd_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dd_control_genpy)
add_dependencies(dd_control_genpy dd_control_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dd_control_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dd_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dd_control
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(dd_control_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dd_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dd_control
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(dd_control_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dd_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dd_control
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(dd_control_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dd_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dd_control
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(dd_control_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dd_control)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dd_control\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dd_control
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(dd_control_generate_messages_py std_msgs_generate_messages_py)
endif()
