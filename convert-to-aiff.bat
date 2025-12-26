FOR /F "tokens=*" %G IN ('dir /b *.opus') DO ffmpeg -i "%G" -map_metadata 0:s:0 -write_id3v2 1 -c:v copy "%~nG.aiff"
FOR /F "tokens=*" %G IN ('dir /b *.m4a') DO ffmpeg -i "%G" -map_metadata 0 -write_id3v2 1 -c:v copy "%~nG.aiff"
