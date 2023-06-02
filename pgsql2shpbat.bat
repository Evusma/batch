rem this batch uses the postGIS command pgsql2shp to export a bunch of tables as shapefiles, from postgresql to the folder 

setlocal enabledelayedexpansion 

for /f %%i in ('psql -h IP -p port -U user -d db -W -c "select table_name from information_schema.tables where table_schema='_qpv'"') do (
  set file_name=C:\xxx\xxx\xxx\qpv\%%i
  set table_name=%%i

  echo !table_name!

  pgsql2shp -u user -h IP -p port -P password -g geom -f !file_name! db "_qpv".!table_name!
)
