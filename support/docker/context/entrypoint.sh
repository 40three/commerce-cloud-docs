#!/bin/bash
cd /app/html

# create file for health check
echo "OK" > health

# start server
nginx -g "daemon off;"