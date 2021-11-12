#
# Try to find the FreeImage library and include path.
# Once done this will define
#
# FREEIMAGE_FOUND
# FREEIMAGE_INCLUDE_PATH
# FREEIMAGE_LIBRARY
# 

FIND_PATH( TINYXML_INCLUDE_PATH tinyxml.h
	/usr/include
	/usr/local/include
	/sw/include
	/opt/local/include
	DOC "The directory where TinyXML.h resides")
FIND_LIBRARY