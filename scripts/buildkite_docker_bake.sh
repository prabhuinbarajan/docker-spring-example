#!/bin/bash
buildkite-agent artifact download build/distributions/*.deb .
eval $(docker-machine env default)
docker build -t docker_sprokest -f src/main/docker/Docker-buildkite .
docker tag docker_sprokest gcr.io/hopeful-list-135723/sprokest
gcloud docker push gcr.io/hopeful-list-135723/sprokest
