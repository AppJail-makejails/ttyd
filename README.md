# ttyd

ttyd is a simple command-line tool for sharing terminal over the web.

https://tsl0922.github.io/ttyd

<img src="https://camo.githubusercontent.com/3908adef643dea90209bb3d2bdb7b2314d2fee3804576b8aa11c88f381e4cbca/68747470733a2f2f692e6962622e636f2f53773648486a432f53637265656e73686f742d32303234303932352d3138303131312d42726176652e6a7067" width="30%" height="auto" alt="ttyd logo">

## How to use this Makejail

```console
$ appjail oci run -Pd \
    -o overwrite=force \
    -o virtualnet=":<random> default" \
    -o nat \
    ghcr.io/appjail-makejails/ttyd ttyd
```

### Arguments (stage: build)

* `ttyd_from` (default: `ghcr.io/appjail-makejails/ttyd`): Location of OCI image. See also [OCI Configuration](#oci-configuration).
* `ttyd_tag` (default: `latest`): OCI image tag. See also [OCI Configuration](#oci-configuration).


## OCI Configuration

```yaml
build:
  variants:
    - tag: 15.1
      containerfile: Containerfile
      aliases: ["latest"]
      default: true
      args:
        FREEBSD_RELEASE: "15.1"
        NO_PKGCLEAN: "1"
      cache_dirs: ["pkgcache0:/var/cache/pkg"]
```
