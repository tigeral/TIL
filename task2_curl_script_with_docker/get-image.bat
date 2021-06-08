@echo off

@REM parse and validate command-line arguments. Show help info if requested.
if [%1]==[/?] goto :help
if [%2]==[] goto :help
echo %* |find "/?" > nul
if errorlevel 1 goto :main

:invalid_arguments
echo Invalid command arguments. Two arguments required.
:help
echo Usage: get-image.bat USERNAME OUTPUT_FILE_NAME
echo.
echo The output file name should be a PNG image file path (absolute or relative to the current directory).
echo For example: get-image.bat tigeral image.png
goto :end

:main
@REM define variables
set base_url=http://localhost:8000
set username=%1
set password=secret
set file=%2

echo ----------------------------
echo Request authentication token
echo ----------------------------
@REM compose CURL command to request an authentication token
set cmd="curl -s -X POST %base_url%/auth --form username=%username% --form password=%password%"
echo Command: %cmd%

@REM send the CURL request and write response to a variable
for /F "delims=/" %%I in ('%cmd%') do set resp=%%I
echo Response: %resp%

@REM extract token value (4th substring of the response divided by a double quote sign)
for /F delims^=^"^ tokens^=4 %%G in ("%resp%") do set auth_token=%%G
echo Token: %auth_token%

echo ---------------------------------
echo Request image and save it to file
echo ---------------------------------
set cmd=curl -s -o %file% -X GET %base_url%/image -H "Authorization: Bearer %auth_token%"
echo Command: %cmd%
%cmd%
@REM check if the file name is relative (does not contain ":\" char sequence) and add the current dir prefix in this case
if %file::\=%==%file% set file=%cd%\%file%
echo File: %file%

:end
@echo on
