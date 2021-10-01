
#
# Try to find the FreeImage library and include path.
# Once done this will define
#
# FREEIMAGE_FOUND
# FREEIMAGE_INCLUDE_PATH
# FREEIMAGE_LIBRARY
# 

IF (WIN32)
	FIND_PATH( FREEIMAGE_INCLUDE_PATH FreeImage.h
		${PROJECT_SOURCE_DIR}/extern/FreeImage