# Install script for directory: /home/pi/lighthouse/lib/libjpeg-turbo-master

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/opt/libjpeg-turbo")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
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

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib32/libturbojpeg.so.0.2.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib32/libturbojpeg.so.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib32/libturbojpeg.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "/opt/libjpeg-turbo/lib32")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib32" TYPE SHARED_LIBRARY FILES
    "/home/pi/lighthouse/lib/libjpeg-turbo-master/build/libturbojpeg.so.0.2.0"
    "/home/pi/lighthouse/lib/libjpeg-turbo-master/build/libturbojpeg.so.0"
    "/home/pi/lighthouse/lib/libjpeg-turbo-master/build/libturbojpeg.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib32/libturbojpeg.so.0.2.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib32/libturbojpeg.so.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib32/libturbojpeg.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHANGE
           FILE "${file}"
           OLD_RPATH "::::::::::::::::::::::::"
           NEW_RPATH "/opt/libjpeg-turbo/lib32")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/tjbench" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/tjbench")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/tjbench"
         RPATH "/opt/libjpeg-turbo/lib32")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/home/pi/lighthouse/lib/libjpeg-turbo-master/build/tjbench")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/tjbench" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/tjbench")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/tjbench"
         OLD_RPATH "/home/pi/lighthouse/lib/libjpeg-turbo-master/build:"
         NEW_RPATH "/opt/libjpeg-turbo/lib32")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/tjbench")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib32" TYPE STATIC_LIBRARY FILES "/home/pi/lighthouse/lib/libjpeg-turbo-master/build/libturbojpeg.a")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES "/home/pi/lighthouse/lib/libjpeg-turbo-master/turbojpeg.h")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib32" TYPE STATIC_LIBRARY FILES "/home/pi/lighthouse/lib/libjpeg-turbo-master/build/libjpeg.a")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/rdjpgcom" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/rdjpgcom")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/rdjpgcom"
         RPATH "/opt/libjpeg-turbo/lib32")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/home/pi/lighthouse/lib/libjpeg-turbo-master/build/rdjpgcom")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/rdjpgcom" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/rdjpgcom")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/rdjpgcom"
         OLD_RPATH "::::::::::::::::::::::::"
         NEW_RPATH "/opt/libjpeg-turbo/lib32")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/rdjpgcom")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/wrjpgcom" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/wrjpgcom")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/wrjpgcom"
         RPATH "/opt/libjpeg-turbo/lib32")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/home/pi/lighthouse/lib/libjpeg-turbo-master/build/wrjpgcom")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/wrjpgcom" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/wrjpgcom")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/wrjpgcom"
         OLD_RPATH "::::::::::::::::::::::::"
         NEW_RPATH "/opt/libjpeg-turbo/lib32")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/wrjpgcom")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/doc" TYPE FILE FILES
    "/home/pi/lighthouse/lib/libjpeg-turbo-master/README.ijg"
    "/home/pi/lighthouse/lib/libjpeg-turbo-master/README.md"
    "/home/pi/lighthouse/lib/libjpeg-turbo-master/example.txt"
    "/home/pi/lighthouse/lib/libjpeg-turbo-master/tjexample.c"
    "/home/pi/lighthouse/lib/libjpeg-turbo-master/libjpeg.txt"
    "/home/pi/lighthouse/lib/libjpeg-turbo-master/structure.txt"
    "/home/pi/lighthouse/lib/libjpeg-turbo-master/usage.txt"
    "/home/pi/lighthouse/lib/libjpeg-turbo-master/wizard.txt"
    "/home/pi/lighthouse/lib/libjpeg-turbo-master/LICENSE.md"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/man/man1" TYPE FILE FILES
    "/home/pi/lighthouse/lib/libjpeg-turbo-master/cjpeg.1"
    "/home/pi/lighthouse/lib/libjpeg-turbo-master/djpeg.1"
    "/home/pi/lighthouse/lib/libjpeg-turbo-master/jpegtran.1"
    "/home/pi/lighthouse/lib/libjpeg-turbo-master/rdjpgcom.1"
    "/home/pi/lighthouse/lib/libjpeg-turbo-master/wrjpgcom.1"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib32/pkgconfig" TYPE FILE FILES
    "/home/pi/lighthouse/lib/libjpeg-turbo-master/build/pkgscripts/libjpeg.pc"
    "/home/pi/lighthouse/lib/libjpeg-turbo-master/build/pkgscripts/libturbojpeg.pc"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES
    "/home/pi/lighthouse/lib/libjpeg-turbo-master/build/jconfig.h"
    "/home/pi/lighthouse/lib/libjpeg-turbo-master/jerror.h"
    "/home/pi/lighthouse/lib/libjpeg-turbo-master/jmorecfg.h"
    "/home/pi/lighthouse/lib/libjpeg-turbo-master/jpeglib.h"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/pi/lighthouse/lib/libjpeg-turbo-master/build/simd/cmake_install.cmake")
  include("/home/pi/lighthouse/lib/libjpeg-turbo-master/build/sharedlib/cmake_install.cmake")
  include("/home/pi/lighthouse/lib/libjpeg-turbo-master/build/md5/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/pi/lighthouse/lib/libjpeg-turbo-master/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
