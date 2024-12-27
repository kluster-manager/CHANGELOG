#!/usr/bin/env bash

export TAG=${TAG:-v0.15.2}
export IMAGE_REGISTRY=ghcr.io/kluster-manager

docker build --push \
    --builder container --platform linux/amd64,linux/arm64 \
    -t ${IMAGE_REGISTRY}/addon-manager:$TAG -f build/Dockerfile.addon .

docker build --push \
    --builder container --platform linux/amd64,linux/arm64 \
    -t ${IMAGE_REGISTRY}/placement:$TAG -f build/Dockerfile.placement .

docker build --push \
    --builder container --platform linux/amd64,linux/arm64 \
    -t ${IMAGE_REGISTRY}/registration:$TAG -f build/Dockerfile.registration .

docker build --push \
    --builder container --platform linux/amd64,linux/arm64 \
    -t ${IMAGE_REGISTRY}/registration-operator:$TAG -f build/Dockerfile.registration-operator .

docker build --push \
    --builder container --platform linux/amd64,linux/arm64 \
    -t ${IMAGE_REGISTRY}/work:$TAG -f build/Dockerfile.work .
