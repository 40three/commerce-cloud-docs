#!/bin/bash
#
# Run ./docker-build.sh TAGNAME, e.g. ./docker-build.sh snapshot
#
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR
cd ../..

# PREPARE
# Workaround: environment.ts does not exist in repo but angular cli needs it to be able to overwrite it with environment.prod.ts
touch src/environments/environment.ts

# BUILD
hugo
if [ $? -ne 0 ]; then
    echo hugo exited with a non zero code, so something went wrong. 
    exit 1
fi

# CREATE CONTEXT
if [ -d "./.context" ]; then rm -Rf ./.context; fi
mkdir -p ./.context/html

cp ./tools/docker/context/* ./.context/
cp -r ./public/* ./.context/html/

# BUILD DOCKER IMAGE
cd ./.context
echo "Building image: 40three.azurecr.io/commerce-cloud-docs:${@}\n";
docker build -t "40three.azurecr.io/commerce-cloud-docs:${@}" .

# CLEANUP
rm -Rf ./.context