# hiera-prune

This tool works only with hiera v3 yaml files. It will write changes to files so make sure you are using version control if you want to rollback.

## Purpose

Prune hiera configs by pushing matching configuration into files lower in the hiera stack.

## Requirements

You must have `docker` installed on your system. [More info](https://www.docker.com/get-started).

## Usage

First, build the image:
```bash
$ docker build -t hiera-prune:current .
```

Then go to your project and run the container:
```bash
$ cd <project with top-level hiera.yaml>
$ docker run -v $(pwd):/home/hiera-src hiera-prune:current
```

And you will have the diff in your local filesystem.
