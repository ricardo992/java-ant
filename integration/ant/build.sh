#!/bin/bash

echo "****************"
echo "* Building jar!*"
echo "****************"

docker run -f integration/ant/Dockerfile --rm -v $(pwd):/work