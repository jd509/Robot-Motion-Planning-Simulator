# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "kuka_sim: 0 messages, 1 services")

set(MSG_I_FLAGS "-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(kuka_sim_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/jaineeldesai509/Desktop/CAM/Emulator/src/kuka_sim/srv/SceneObjSrv.srv" NAME_WE)
add_custom_target(_kuka_sim_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kuka_sim" "/home/jaineeldesai509/Desktop/CAM/Emulator/src/kuka_sim/srv/SceneObjSrv.srv" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(kuka_sim
  "/home/jaineeldesai509/Desktop/CAM/Emulator/src/kuka_sim/srv/SceneObjSrv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kuka_sim
)

### Generating Module File
_generate_module_cpp(kuka_sim
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kuka_sim
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(kuka_sim_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(kuka_sim_generate_messages kuka_sim_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jaineeldesai509/Desktop/CAM/Emulator/src/kuka_sim/srv/SceneObjSrv.srv" NAME_WE)
add_dependencies(kuka_sim_generate_messages_cpp _kuka_sim_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kuka_sim_gencpp)
add_dependencies(kuka_sim_gencpp kuka_sim_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kuka_sim_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(kuka_sim
  "/home/jaineeldesai509/Desktop/CAM/Emulator/src/kuka_sim/srv/SceneObjSrv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kuka_sim
)

### Generating Module File
_generate_module_eus(kuka_sim
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kuka_sim
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(kuka_sim_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(kuka_sim_generate_messages kuka_sim_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jaineeldesai509/Desktop/CAM/Emulator/src/kuka_sim/srv/SceneObjSrv.srv" NAME_WE)
add_dependencies(kuka_sim_generate_messages_eus _kuka_sim_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kuka_sim_geneus)
add_dependencies(kuka_sim_geneus kuka_sim_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kuka_sim_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(kuka_sim
  "/home/jaineeldesai509/Desktop/CAM/Emulator/src/kuka_sim/srv/SceneObjSrv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kuka_sim
)

### Generating Module File
_generate_module_lisp(kuka_sim
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kuka_sim
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(kuka_sim_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(kuka_sim_generate_messages kuka_sim_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jaineeldesai509/Desktop/CAM/Emulator/src/kuka_sim/srv/SceneObjSrv.srv" NAME_WE)
add_dependencies(kuka_sim_generate_messages_lisp _kuka_sim_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kuka_sim_genlisp)
add_dependencies(kuka_sim_genlisp kuka_sim_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kuka_sim_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(kuka_sim
  "/home/jaineeldesai509/Desktop/CAM/Emulator/src/kuka_sim/srv/SceneObjSrv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kuka_sim
)

### Generating Module File
_generate_module_nodejs(kuka_sim
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kuka_sim
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(kuka_sim_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(kuka_sim_generate_messages kuka_sim_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jaineeldesai509/Desktop/CAM/Emulator/src/kuka_sim/srv/SceneObjSrv.srv" NAME_WE)
add_dependencies(kuka_sim_generate_messages_nodejs _kuka_sim_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kuka_sim_gennodejs)
add_dependencies(kuka_sim_gennodejs kuka_sim_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kuka_sim_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(kuka_sim
  "/home/jaineeldesai509/Desktop/CAM/Emulator/src/kuka_sim/srv/SceneObjSrv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kuka_sim
)

### Generating Module File
_generate_module_py(kuka_sim
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kuka_sim
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(kuka_sim_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(kuka_sim_generate_messages kuka_sim_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jaineeldesai509/Desktop/CAM/Emulator/src/kuka_sim/srv/SceneObjSrv.srv" NAME_WE)
add_dependencies(kuka_sim_generate_messages_py _kuka_sim_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kuka_sim_genpy)
add_dependencies(kuka_sim_genpy kuka_sim_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kuka_sim_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kuka_sim)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kuka_sim
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(kuka_sim_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(kuka_sim_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kuka_sim)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kuka_sim
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(kuka_sim_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(kuka_sim_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kuka_sim)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kuka_sim
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(kuka_sim_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(kuka_sim_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kuka_sim)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kuka_sim
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(kuka_sim_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(kuka_sim_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kuka_sim)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kuka_sim\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kuka_sim
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(kuka_sim_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(kuka_sim_generate_messages_py std_msgs_generate_messages_py)
endif()
