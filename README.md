# Collectd Graph Panel (CGP) Docker image

[![](https://badge.imagelayers.io/konjak/cgp:latest.svg)](https://imagelayers.io/?images=konjak/cgp:latest)

Production ready Docker container for [Collectd Graph Panel (CGP)](https://github.com/pommi/CGP) with collectd usage.

## Features - why using this image instead of several others?

- Uses [alpine](https://registry.hub.docker.com/_/alpine/) base image
- This image is as small as possible - uses PHP built-in webserver
- It's possible to completely change CGP's configuration
- Installs latest CGP release

## Usage

```bash
sudo docker run \
  -p 80:80 \
  -v ./folder-with-php-config-files:/config \
  -v /var/lib/collectd/rrd:/var/lib/collectd/rrd
  konjak/cgp
```

All provided env vars starting with CGP\_ will be converted to config values for CGP.

It's also possible to mount a folder with php config files to `/config`. All \*.php files in this folder will be executed after the base config.

## Status

Production stable.
