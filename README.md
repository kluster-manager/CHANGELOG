# CHANGELOG

## managed-serviceaccount

```
go mod tidy
go mod vendor

make images IMG_REGISTRY=ghcr.io/kluster-manager IMAGE_TAG=v0.6.0

docker push ghcr.io/kluster-manager/managed-serviceaccount:v0.6.0
```

## cluster-gateway

```
export IMG_TAG=v1.9.0

make gateway ocm-addon-manager
docker push ghcr.io/kluster-manager/cluster-gateway-manager:${IMG_TAG}
docker push ghcr.io/kluster-manager/cluster-gateway:${IMG_TAG}
```
