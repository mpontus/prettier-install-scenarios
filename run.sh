#!/bin/sh

tag=$(basename $1)

exec docker run --rm -it "prettier-install-scenarios:$tag"
