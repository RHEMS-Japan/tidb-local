#!/bin/bash

service mysql start
mysql --comments --host 127.0.0.1 --port 4000 -u root
