#!/bin/bash

docker run --name tiup -p 8080:2379 -p 3000:3000 -p 4000:4000 -it --rm tiup-test
