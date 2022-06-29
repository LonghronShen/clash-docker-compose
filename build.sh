#!/bin/bash

set -x

./clash-dashboard/fetch.sh

docker-compose build