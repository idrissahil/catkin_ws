# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "aeplanner_evaluation: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(aeplanner_evaluation_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/idris/catkin_ws/src/aeplanner/aeplanner_evaluation/srv/Coverage.srv" NAME_WE)
add_custom_target(_aeplanner_evaluation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aeplanner_evaluation" "/home/idris/catkin_ws/src/aeplanner/aeplanner_evaluation/srv/Coverage.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(aeplanner_evaluation
  "/home/idris/catkin_ws/src/aeplanner/aeplanner_evaluation/srv/Coverage.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aeplanner_evaluation
)

### Generating Module File
_generate_module_cpp(aeplanner_evaluation
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aeplanner_evaluation
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(aeplanner_evaluation_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(aeplanner_evaluation_generate_messages aeplanner_evaluation_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/idris/catkin_ws/src/aeplanner/aeplanner_evaluation/srv/Coverage.srv" NAME_WE)
add_dependencies(aeplanner_evaluation_generate_messages_cpp _aeplanner_evaluation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(aeplanner_evaluation_gencpp)
add_dependencies(aeplanner_evaluation_gencpp aeplanner_evaluation_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS aeplanner_evaluation_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(aeplanner_evaluation
  "/home/idris/catkin_ws/src/aeplanner/aeplanner_evaluation/srv/Coverage.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aeplanner_evaluation
)

### Generating Module File
_generate_module_eus(aeplanner_evaluation
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aeplanner_evaluation
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(aeplanner_evaluation_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(aeplanner_evaluation_generate_messages aeplanner_evaluation_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/idris/catkin_ws/src/aeplanner/aeplanner_evaluation/srv/Coverage.srv" NAME_WE)
add_dependencies(aeplanner_evaluation_generate_messages_eus _aeplanner_evaluation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(aeplanner_evaluation_geneus)
add_dependencies(aeplanner_evaluation_geneus aeplanner_evaluation_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS aeplanner_evaluation_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(aeplanner_evaluation
  "/home/idris/catkin_ws/src/aeplanner/aeplanner_evaluation/srv/Coverage.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aeplanner_evaluation
)

### Generating Module File
_generate_module_lisp(aeplanner_evaluation
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aeplanner_evaluation
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(aeplanner_evaluation_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(aeplanner_evaluation_generate_messages aeplanner_evaluation_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/idris/catkin_ws/src/aeplanner/aeplanner_evaluation/srv/Coverage.srv" NAME_WE)
add_dependencies(aeplanner_evaluation_generate_messages_lisp _aeplanner_evaluation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(aeplanner_evaluation_genlisp)
add_dependencies(aeplanner_evaluation_genlisp aeplanner_evaluation_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS aeplanner_evaluation_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(aeplanner_evaluation
  "/home/idris/catkin_ws/src/aeplanner/aeplanner_evaluation/srv/Coverage.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aeplanner_evaluation
)

### Generating Module File
_generate_module_nodejs(aeplanner_evaluation
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aeplanner_evaluation
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(aeplanner_evaluation_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(aeplanner_evaluation_generate_messages aeplanner_evaluation_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/idris/catkin_ws/src/aeplanner/aeplanner_evaluation/srv/Coverage.srv" NAME_WE)
add_dependencies(aeplanner_evaluation_generate_messages_nodejs _aeplanner_evaluation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(aeplanner_evaluation_gennodejs)
add_dependencies(aeplanner_evaluation_gennodejs aeplanner_evaluation_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS aeplanner_evaluation_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(aeplanner_evaluation
  "/home/idris/catkin_ws/src/aeplanner/aeplanner_evaluation/srv/Coverage.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aeplanner_evaluation
)

### Generating Module File
_generate_module_py(aeplanner_evaluation
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aeplanner_evaluation
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(aeplanner_evaluation_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(aeplanner_evaluation_generate_messages aeplanner_evaluation_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/idris/catkin_ws/src/aeplanner/aeplanner_evaluation/srv/Coverage.srv" NAME_WE)
add_dependencies(aeplanner_evaluation_generate_messages_py _aeplanner_evaluation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(aeplanner_evaluation_genpy)
add_dependencies(aeplanner_evaluation_genpy aeplanner_evaluation_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS aeplanner_evaluation_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aeplanner_evaluation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aeplanner_evaluation
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(aeplanner_evaluation_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aeplanner_evaluation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aeplanner_evaluation
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(aeplanner_evaluation_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aeplanner_evaluation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aeplanner_evaluation
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(aeplanner_evaluation_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aeplanner_evaluation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aeplanner_evaluation
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(aeplanner_evaluation_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aeplanner_evaluation)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aeplanner_evaluation\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aeplanner_evaluation
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(aeplanner_evaluation_generate_messages_py std_msgs_generate_messages_py)
endif()
