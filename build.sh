#!/bin/sh

image_name=$(basename $(dirname $(realpath $0)));

for scenario_dir in "$@"; do
  tag=$(basename "$scenario_dir")
  docker build -q -t "${image_name}:${tag}" "$scenario_dir"
done
