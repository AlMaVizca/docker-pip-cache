[![](https://images.microbadger.com/badges/image/aanatoly/pip-cache.svg)](https://microbadger.com/images/aanatoly/pip-cache "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/aanatoly/pip-cache.svg)](https://microbadger.com/images/aanatoly/pip-cache "Get your own version badge on microbadger.com")
![](https://img.shields.io/docker/pulls/aanatoly/pip-cache.svg?style=flat)
# docker-pip-cache
This image runs `devpi` server serving as a caching proxy to the main index.

*Note:* This is a fix awaiting for this [PR](https://github.com/aanatoly/docker-pip-cache/pull/1) to be merged

## Usage
Start the server
```bash
docker run --rm -t --name pip-cache \
    -v /var/cache/pip-cache:/data \
    -p 3141:3141 \
    almavizca/pip-cache
```
Run pip
```bash
PHOST=localhost
pip install --trusted-host $PHOST --index-url http://$PHOST:3141/root/pypi/+simple/ tox
```

## Build an image
```bash
make build_MNPR     # build myimage:2.3.4-rc2
make push_MNP       # push as myimage:2.3.4
make push_MN        # push as myimage:2.3
```
[semver]: https://semver.org/
