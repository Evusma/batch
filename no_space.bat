rem this batch deletes the spaces in the file names

setlocal enabledelayedexpansion

FOR %%f IN (*.*) DO ( 
	set ARG=%%f
	ren "%%f" !ARG: =!)
