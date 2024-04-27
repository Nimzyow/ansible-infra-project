#!/usr/bin/env bash

set -eu

GREEN=$(tput setaf 2)
RESET=$(tput sgr0)

echo "${GREEN}Starting to build image${RESET}"
# latest tag is purely for demo purposes. Should tag image with commit hash to identify the commit.
docker build -t nimzy/next-demo-app:latest .
echo "${GREEN}Build successful. Pushing to docker hub${RESET}"
docker push nimzy/next-demo-app:latest
echo "${GREEN}All done, good job!${RESET}"
