#!/bin/sh

for scenario_dir in "$@"; do
  tag=$(basename "$scenario_dir")
  docker build -t "prettier-install-scenarios:${tag}" "$scenario_dir"
done
