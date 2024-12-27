#!/usr/bin/env bash

export TAG=${TAG:-v0.6.0}
export IMAGE_REGISTRY=ghcr.io/kluster-manager

docker buildx create \
    --name container \
    --driver=docker-container

docker build --push \
    --builder container --platform linux/amd64,linux/arm64 \
    -t ${IMAGE_REGISTRY}/cluster-proxy:$TAG -f cmd/Dockerfile .
