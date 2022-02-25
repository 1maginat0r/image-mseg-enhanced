
./msegcli_svm toposys2.ers output WeightsList.txt LevelParam.txt
gdal_polygonize.py raster.ers -f "ESRI Shapefile" polygons.shp
mv stats.test toposys2.test
mv training.train toposys2.train