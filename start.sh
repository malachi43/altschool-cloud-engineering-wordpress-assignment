#!/bin/bash

docker compose down --volumes

docker compose -f docker-compose.yml up