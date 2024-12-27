#!/usr/bin/env bash

export TAG=${TAG:-v0.7.0}
export IMG_REGISTRY=ghcr.io/kluster-manager

docker buildx create \
    --name container \
    --driver=docker-container

docker build --push \
    --builder container --platform linux/amd64,linux/arm64 \
    -t ${IMG_REGISTRY}/managed-serviceaccount:$TAG .
