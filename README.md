# Containerized Application Startup Guide

## Overview
This project is packaged as a Docker container for easy deployment. The `start.sh` script automates the process of starting the application.

## Prerequisites
Ensure you have the following installed on your system before proceeding:
- [Docker](https://docs.docker.com/get-docker/) (latest version recommended)
- [Docker Compose](https://docs.docker.com/compose/install/) (if using `docker-compose`)
- Bash shell (for executing `start.sh`)

## Usage

### 1. Clone the Repository
```sh
 mkdir docker-wordpress && cd $_
 git clone git@github.com:malachi43/altschool-cloud-engineering-wordpress-assignment.git
```

### 2. Make the `start.sh` Script Executable
```sh
chmod +x start.sh
```

### 3. Run the Startup Script
```sh
./start.sh
```
This script will:
- Build the Docker image (if not already built)
- Start the container
- Verify that the application is running

### 4. Accessing Wordpress Dashboard
- visit the `http://localhost:8080`
- login with the following credentials if promoted:
- useraname: malachi
- password: wordpress_malachi_12
- login
- after a successful login, you will be presented with your wordpress dashboard
- customize your site as you deem fit
- visit the url: `http://localhost:8080` to see your new customize site is hosted with the recent changes you made
- Holla!!! you have just hosted your first wordpress site.

### 5. Verify the Running Container
After executing the script, confirm the container is running with:
```sh
docker ps
```
You should see your container listed as running.

### 5. Stopping the Application
To stop and remove the running container, run:
```sh
./start.sh stop
```
Alternatively, manually stop the container with:
```sh
docker container stop <container-id>
```

## Troubleshooting
- If the container fails to start, check the logs:
  ```sh
  docker logs <container-id>
  ```
- Ensure no other services are running on the same port.

## License
This project is licensed under the MIT License.
