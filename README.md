# azure-cli-unprivileged

Just a small azure-cli-based container with user 1000:1000 to run `az` without root.

## Usage

The container is published at [Dockerhub](https://hub.docker.com/repository/docker/jhagestedt/azure-cli-unprivileged).

```bash
docker run --rm -u 1000:1000 jhagestedt/azure-cli-unprivileged --help
```
