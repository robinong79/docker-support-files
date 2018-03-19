#!/bin/bash

#Free space on the Docker System
$ docker system prune -af

#Free space on the Docker Volumes
$ docker volume prune -f
