#!/bin/bash
set -e

cd ..

flutter build web
#flutter build web --base-href "/assets/new-league/"

# Change directory to "build/web"
cd build/web

serve