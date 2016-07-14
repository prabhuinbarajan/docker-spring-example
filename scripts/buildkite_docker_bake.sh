#!/bin/bash
buildkite-agent artifact download --step gradlebuild build/distributions/*.deb
docker build -t docker_sprokest -f src/main/docker/Docker-buildkite
