#!/bin/bash

export TOKEN=waf1n4cJsQ7dIL7TthDfMueCe/MCSd7LBhCDgLVXvsO1YZ8w59tJUY6hUQbIXSZE

docker-compose build
docker-compose up -d dvwa fast 
docker-compose run --rm -e CI_MODE=testing -e TEST_RUN_URI=http://dvwa:80 -e TEST_RECORD_ID=3219 fast
docker-compose down
