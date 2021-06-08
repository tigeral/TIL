@echo off
set cmd="docker ps --filter ancestor=sskorol/http-playground --format {{.ID}}"
for /F "delims=" %%I in ('%cmd%') do set container_id=%%I
@echo on
docker stop %container_id%
