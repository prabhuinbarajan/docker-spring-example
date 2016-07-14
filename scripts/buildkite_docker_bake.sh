#!/bin/bash
buildkite-agent artifact download build/distributions/*.deb . --step gradlebuild 
docker build -t docker_sprokest -f src/main/docker/Docker-buildkite
