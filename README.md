# CHANGELOG

## clusteradm

```
export IMAGE_TAG=v0.9.0

make build-bin
make image
make push
```


## managed-serviceaccount

```
go mod tidy
go mod vendor

export IMAGE_TAG=v0.6.0

make images IMG_REGISTRY=ghcr.io/kluster-manager

docker push ghcr.io/kluster-manager/managed-serviceaccount:${IMAGE_TAG}
```

## cluster-proxy

```
go mod tidy
go mod vendor

export IMAGE_TAG=v0.5.0

make images IMAGE_REGISTRY_NAME=ghcr.io/kluster-manager

docker push ghcr.io/kluster-manager/cluster-proxy:${IMAGE_TAG}
```

## cluster-gateway

```
export IMG_TAG=v1.9.0

make gateway ocm-addon-manager
docker push ghcr.io/kluster-manager/cluster-gateway-manager:${IMG_TAG}
docker push ghcr.io/kluster-manager/cluster-gateway:${IMG_TAG}
```
