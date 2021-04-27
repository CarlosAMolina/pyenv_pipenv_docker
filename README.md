## Introduction

Dockerfile for a Debian OS with pyenv and pipenv.

## Run

First, create the docker image at <https://github.com/CarlosAMolina/pyenv_linux/blob/master/documentation/examples>.

Create the docker image of this project:

```bash
cd THIS_PROJECT_PATH
docker build -t pyenv_pipenv .
```

To run the tests that check everything has been created and imported correctly, run the docker container, the results will be displayed at the screen:

```bash
docker run --name pyenv_pipenv_run --rm -it pyenv_pipenv
```

