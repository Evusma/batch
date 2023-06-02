rem this batch uses the GDAL command ogr2ogr to convert file formats to shapefile 

FOR %%f IN (*.tab) DO (
	echo %%~nf 
	ogr2ogr -f "ESRI Shapefile" %%~nf.shp %%f)
