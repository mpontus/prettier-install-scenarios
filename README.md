### Requirements

You need [docker](https://www.docker.com/) to run these scenarios.

### How to run a scenario

1. Build the docker image from within a scenario folder:

```bash
docker build -t "prettier-install-scenarios:$(basename "$PWD")" .
```

2. Start the shell session in the scenario environment:

```bash
docker run --rm -it "prettier-install-scenarios:$(basename "$PWD")"
```

3. From within the shell run `prettier-install` and examine the results.

### How to use this for development

You can mount your local copy of prettier-install in place of the release
distributed via npm as follows:

```bash

docker run --rm -it \
  -v ~/github/prettier-install:/usr/local/lib/node_modules/prettier-install:ro
  "prettier-install-scenarios:$(basename "$PWD")"
```
