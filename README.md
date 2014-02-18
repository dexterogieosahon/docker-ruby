# ![](https://gravatar.com/avatar/11d3bc4c3163e3d238d558d5c9d98efe?s=64) aptible/ruby

All Ruby versions, on top of Ubuntu 12.04.

## Installation and Usage

    docker pull quay.io/aptible/ruby
    docker run quay.io/aptible/ruby [options]

## Available Tags

* `latest`: Currently Ruby 2.0.0-p353
* `2.0.0`: Ruby 2.0.0-p353

## Tests

To run a simple integration test of the Dockerfile:

    make test

## Deployment

To push the Docker image to Quay, run the following command. It will run (and confirm successful completion) of integration tests before pushing to the remote repository.

    make release

## Copyright and License

MIT License, see [LICENSE](LICENSE.md) for details.

Copyright (c) 2014 [Aptible](https://www.aptible.com), [Frank Macreery](https://github.com/fancyremarker), and contributors.
