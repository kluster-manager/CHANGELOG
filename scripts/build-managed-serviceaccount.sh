#!/usr/bin/env bash

export TAG=${TAG:-v0.8.1}
export IMG_REGISTRY=ghcr.io/kluster-manager

docker buildx create \
    --name container \
    --driver=docker-container || true

docker build --push \
    --builder container --platform linux/amd64,linux/arm64 \
    -t ${IMG_REGISTRY}/managed-serviceaccount:$TAG .
