#!/bin/bash

docker build -t  mynginx:v01 .

docker tag mynginx:v01 subiksha29/prod
docker tag mynginx:v01 subiksha29/dev
