find_library(LIBSERIALPORT_LIBRARY serialport REQUIRED)
MESSAGE(STATUS "LIBSERIALPORT_LIBRARY = ${LIBSERIALPORT_LIBRARY}")

find_path(LIBSERIALPORT_INCLUDE_DIR libserialport.h)
MESSAGE(STATUS "LIBSERIALPORT_INCLUDE_DIR = ${LIBSERIALPORT_INCLUDE_DIR}")

set(LIBSERIALPORT_LIBRARIES ${LIBSERIALPORT_LIBRARY})
set(LIBSERIALPORT_INCLUDE_DIRS ${LIBSERIALPORT_INCLUDE_DIR})

MESSAGE(STATUS "LIBSERIALPORT_LIBRARIES = ${LIBSERIALPORT_LIBRARIES}")

include(FindPackageHandleStandardArgs)
# handle the QUIETLY and REQUIRED arguments and set LIBXML2_FOUND to TRUE
# if all listed variables are TRUE
find_package_handle_standard_args(libserialport DEFAULT_MSG LIBSERIALPORT_LIBRARY LIBSERIALPORT_INCLUDE_DIR)
