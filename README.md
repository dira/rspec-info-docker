# rspec-info-docker

A docker container for [https://github.com/rspec/rspec.github.io](https://github.com/rspec/rspec.github.io).

Can be used for other projects that need middleman and imagemagick, as well.

# Usage

1. Get the image and tag it "rspec.info"
1. From the project folder:

    >  docker run -it rspec.info

    /var/app # bundle install

    /var/app # middleman build

1. Run the server

    > docker run -it -p 4567:4567 rspec.info middleman server
