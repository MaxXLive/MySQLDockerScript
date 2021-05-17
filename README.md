# MySQL Docker Template + Script
Clone this to your server, insert your sql files and start your desired MySQL Server inside docker.

## Features
- Dockerfile for creation
- Random root password to prevent access
- All-In-One docker script file

## docker.sh
Usage of docker script file. The follow commands can be used as arguments:

``./docker.sh ...``

Argument | Short | Explanation 
--- | --- | ---
build | b |  Builds the docker image
run | r |  Starts the docker container from image
exit | e |  Stops and removes the docker container
logs | l |  Shows logs of docker container
ps | - |  Shows all running containers which contain the application name
full | f |  Full rebuild and restart (exit, build, run, wait, logs)

## Installation

1. Clone this Project
2. Add .sql files to the ``sql`` directory. They will be executed on start. To ensure order of execution, use indices in front of filename.
4. Edit ``docker.sh``, change application-name and port
3. Make ``docker.sh`` executable with `chmod +x docker.sh`
4. Use dockerscript
