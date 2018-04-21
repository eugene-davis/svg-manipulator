#!/bin/bash

# Used to get a shell into an svg-converter container and execute a basic command
# Will be expanded later
# Example:
# bash .automation/convert-shell.sh svgexport bits-must-flow

command=$1
name=$2

docker pull nobodyfromaroundhere/svg-manipulator

docker run -it --rm -v $(pwd)/$name/fonts/:/root/.local/share/fonts/TTF/type1 -v $(pwd)/$name:/convert -v $(pwd)/../watermark:/watermark nobodyfromaroundhere/svg-manipulator /bin/bash -c "cd /convert && ${command} ${name} ${3}"