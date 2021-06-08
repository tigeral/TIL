# Task #2: docker

> So here's what you need to achieve:
> - Install Docker.
> - Pull sskorol/http-playground container locally. It's a very simple http server which you'll use in the further steps.
> - Run a downloaded container in a background. Note that you have to map 8000 container's port to your host's 8000 port 
>   so that a newly started http server will be available from within your local network on localhost:8000.
> - Create a shell script which does the following:
>   - Sends a POST request via curl to /auth endpoint of your recently started server. You have to pass the following form 
>     data: username = your GitHub id, password = secret.
>   - Extracts access_token from the response body into variable.
>   - Sends a GET request to /image endpoint with the authorization header of Bearer type and the access_token value.
>   - Saves the response output to a file. Note that it's a .png image.
> - Your GitHub username and output image name should be passed to the script as arguments.
> - Write a new amazing story in your TIL repository. Note that you may include your script either as a standalone file 
>   or a part of a nested README.