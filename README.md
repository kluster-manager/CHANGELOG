# CHANGELOG

## cluster-gateway

```
export IMG_TAG=v1.9.0

make gateway ocm-addon-manager
docker push ghcr.io/kluster-manager/cluster-gateway-manager:${IMG_TAG}
docker push ghcr.io/kluster-manager/cluster-gateway:${IMG_TAG}
```
