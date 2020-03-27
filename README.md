# ubi-etherpad-lite
[![Docker Repository on Quay](https://quay.io/repository/gedasilv/ubi-etherpad-lite/status "Docker Repository on Quay")](https://quay.io/repository/gedasilv/ubi-etherpad-lite)

Unofficial image for Gogs based on Red Hat Universal Base Image v8

## Why another Etherpad container image?

This image was build using the [Red Hat Universal Base Image (UBI) 8](https://developers.redhat.com/products/rhel/ubi/), which provides a stable foundation to workloads running on mission-critical environments, specially on **Red Hat OpenShift Container Platform**.

## How to use it?

If you running standalone containers, you can use `podman` or `docker` with:

```bash
podman run -d -p 3000:3000 quay.io/repository/gedasilv/ubi-etherpad-lite
```

## Any support?

This is a community project, not backed nor supported by Red Hat.
