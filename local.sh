#!/bin/bash

docker-compose build
docker-compose up -d dvwa selenium fast
docker-compose run test
# docker-compose run --rm -e CI_MODE=testing -e TEST_RUN_URI=http://dvwa:80 -e TEST_RECORD_ID=3219 -e WALLARM_API_TOKEN=waf1n4cJsQ7dIL7TthDfMueCe/MCSd7LBhCDgLVXvsO1YZ8w59tJUY6hUQbIXSZE fast
docker-compose run --rm -e CI_MODE=testing -e TEST_RUN_URI=http://dvwa:80 -e WALLARM_API_TOKEN=4/2EO8Z3L/mnK/fVX0wiQiJfw5rjEAJy6LP5HwDdyPKe25KW7NdHq4R2QRAiaYEO fast
docker-compose down
