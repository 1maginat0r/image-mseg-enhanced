
CMAKE_MINIMUM_REQUIRED(VERSION 2.6)
PROJECT(MSEG)

ADD_LIBRARY(msegio SHARED msegio.cpp)

ADD_LIBRARY(msegcore SHARED msegcore.cpp)

ADD_LIBRARY(msegstd SHARED msegstd.cpp)

ADD_LIBRARY(msegfastedge SHARED msegfastedge.cpp)

ADD_LIBRARY(msegfast SHARED msegfast.cpp)

ADD_LIBRARY(msegfastest SHARED msegfastest.cpp)

ADD_LIBRARY(msegslow SHARED msegslow.cpp)

ADD_EXECUTABLE(msegcli msegcli.cpp)

ADD_EXECUTABLE(msegcli_edge msegcli_edge.cpp)

ADD_EXECUTABLE(msegcli_edge_svm msegcli_edge_svm.cpp)

ADD_EXECUTABLE(msegcli_tex msegcli_tex.cpp)

ADD_EXECUTABLE(msegcli_svm msegcli_svm.cpp)

ADD_EXECUTABLE(obia-class-export-svm obia-class-export-svm.cpp)

ADD_EXECUTABLE(obia-utils-confmatrix obia-utils-confmatrix.cpp)

SET(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/CMake/")

SET(CMAKE_BUILD_TYPE "Release")

FIND_PACKAGE(FreeImage REQUIRED)
INCLUDE_DIRECTORIES(${FREEIMAGE_INCLUDE_PATH})

FIND_PACKAGE(TinyXML REQUIRED)
INCLUDE_DIRECTORIES(${TINYXML_INCLUDE_PATH})

TARGET_LINK_LIBRARIES (msegcli msegio msegcore msegstd ${FREEIMAGE_LIBRARY} ${TINYXML_LIBRARY})

TARGET_LINK_LIBRARIES (msegcli_edge msegio msegcore msegfastedge ${FREEIMAGE_LIBRARY} ${TINYXML_LIBRARY})

TARGET_LINK_LIBRARIES (msegcli_edge_svm msegio msegcore msegfastedge ${FREEIMAGE_LIBRARY} ${TINYXML_LIBRARY})

TARGET_LINK_LIBRARIES (msegcli_tex msegio msegcore msegslow msegstd ${FREEIMAGE_LIBRARY} ${TINYXML_LIBRARY})

TARGET_LINK_LIBRARIES (msegcli_svm msegio msegcore msegstd ${FREEIMAGE_LIBRARY} ${TINYXML_LIBRARY})

TARGET_LINK_LIBRARIES (obia-class-export-svm msegio msegcore ${FREEIMAGE_LIBRARY} ${TINYXML_LIBRARY})

# The version number.
SET (MSEG_VERSION_MAJOR "0")
SET (MSEG_VERSION_MINOR "9")