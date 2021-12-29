
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
