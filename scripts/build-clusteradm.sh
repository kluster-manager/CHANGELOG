#!/usr/bin/env bash

export TAG=${TAG:-v1.0.0}
export IMAGE_REGISTRY=ghcr.io/kluster-manager

docker buildx create \
    --name container \
    --driver=docker-container || true

docker build --push \
    --builder container --platform linux/amd64,linux/arm64 \
    -t ${IMAGE_REGISTRY}/clusteradm:$TAG .
