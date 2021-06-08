# Task #2 scripting basics + docker

## What have I leaned today?

This time I had to write a script to call a CURL command line tool to interact with some web application served within a
Docker image.

I was working on a Windows workstation at the moment when I just started this task. So, I made a decision to write this 
script on the Windows batch programming language.  
I am pretty experienced with Python and Linux shell scripts but not with the Windows batch scripting. So, this was a 
small challenge to me to write a pure batch script without any external tool usage (except the CURL app).

What was new for me in the Windows batch scripting:
- Parse command output using "for /f" operator.
- Process command-line arguments and show "usage info" to user in the case of invalid arguments.
- Check if the string contain a char sequence (using [replace + compare approach](
  https://www.dostips.com/DtTipsStringManipulation.php#Snippets.Replace).
  
The result script file can be found there: [get-image.bat](../../../task2_curl_script_with_docker/get-image.bat)  
In addition, I created small scripts to setup/start/stop docker image "sskorol/http-playground".