rem this batch uses the postGIS command shp2pgsql to upload a bunch of shapefiles to postgresql 

FOR %%f IN (C:\xxx\xxx\xxx\_donnees\*.shp) DO (
    shp2pgsql -s 2154 -W "UTF-8" "%%f" "__donnees".%%~nf | psql -h IP -p port -U user -d db -W)

