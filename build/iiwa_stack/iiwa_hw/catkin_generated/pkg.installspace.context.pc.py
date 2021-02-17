# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "controller_interface;hardware_interface;control_toolbox".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-liiwa_hw".split(';') if "-liiwa_hw" != "" else []
PROJECT_NAME = "iiwa_hw"
PROJECT_SPACE_DIR = "/usr/local"
PROJECT_VERSION = "1.4.0"
