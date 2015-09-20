## Docker Erlang Runner

Compiles and executes Erlang source files from a Docker container.

### Build Image

    docker build -t="der" .

### Run Container

    docker run -it -v /path/to/erlang/files:/tmp --env-file ./env.list der
    docker run -d -v /path/to/erlang/files:/tmp --env-file ./env.list der
