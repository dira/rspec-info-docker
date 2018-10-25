# rspec-info-docker

A docker container for [https://github.com/rspec/rspec.github.io](https://github.com/rspec/rspec.github.io).

Can be used for other projects that need middleman and imagemagick, as well.

# Usage

1. Save Dockerfile in a folder
2. Get the source of the projec in another folder.
3. From that folder, build the image

    >  docker build -f <path_to_docker_file>  -t rspec.info .

4. Run the server

    > docker run -it -p 4567:4567 rspec.info middleman server