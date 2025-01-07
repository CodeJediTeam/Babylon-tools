################################################################################
# Babylon cmake tools
################################################################################
cmake_minimum_required(VERSION 3.30.0 FATAL_ERROR)

if(NOT BABYLON_ROOT_DIR)
    message(FATAL_ERROR "Babylon root directory not found")
endif()

set(BABYLON_CMAKE_MODULES_DIR "${CMAKE_CURRENT_LIST_DIR}/modules" CACHE INTERNAL "Babylon CMake modules directory")
set(BABYLON_CMAKE_PLATFORM_MODULES_DIR "${CMAKE_CURRENT_LIST_DIR}/platforms" CACHE INTERNAL "Babylon CMake platform modules directory")

include("${BABYLON_CMAKE_MODULES_DIR}/log.cmake")
include("${BABYLON_CMAKE_MODULES_DIR}/common.cmake")
include("${BABYLON_CMAKE_MODULES_DIR}/sources.cmake")
include("${BABYLON_CMAKE_MODULES_DIR}/units.cmake")

babylon_init_unit_system()
babylon_collect_internal_units()
