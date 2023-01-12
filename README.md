# Demo for django-poetry docker

It is important to create a proper `Dockerfile` as the one you can find in this project root directory. First, you need to build from the file using the command `docker build -t demo .
` and once the build is ready you can run your container with `docker run -p 8080:80 demo`.

## The build command

`docker build -t demo .`

The build command asks docker to build your container. This command searches in your directory for a `Dockerfile` which gives instructions to docker for the container creation process. The `Dockerfile` may differ between projects even if they use the same language and frameworks.

The option `-t` stands for `tag` and allows us to give a name to reference the container, then we specify the directory with the `.`.

## The run command

`docker run -p 8080:80 demo`

Once the container is created we can run it (that's the whole point). To run the container we use the `-p` option for specifying the port, and then we need to refer to the tag of the container we want to run.

We choose the `8080:80` which means search the port 80 of the container and expose it to `localhost:8080`.

