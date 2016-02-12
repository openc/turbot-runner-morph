# turbot-runner-morph

[![Gem Version](https://badge.fury.io/rb/turbot-runner.svg)](https://badge.fury.io/rb/turbot-runner)
[![Build Status](https://secure.travis-ci.org/openc/turbot-runner.png)](https://travis-ci.org/openc/turbot-runner)
[![Dependency Status](https://gemnasium.com/openc/turbot-runner.png)](https://gemnasium.com/openc/turbot-runner)
[![Coverage Status](https://coveralls.io/repos/openc/turbot-runner/badge.png)](https://coveralls.io/r/openc/turbot-runner)
[![Code Climate](https://codeclimate.com/github/openc/turbot-runner.png)](https://codeclimate.com/github/openc/turbot-runner)

## Getting started

    git submodule update --init
    cd schema && git checkout master && cd ..

## Updating the schema

    cd schema && git pull --rebase && cd ..
    git commit schema -m 'Pull in new schema'

## Releasing a new version

Bump the version in `lib/turbot_runner/version.rb` according to the [Semantic Versioning](http://semver.org/) convention, then:

    git commit lib/turbot_runner/version.rb -m 'Release new version'
    rake release # requires Rubygems credentials

In [morph](https://github.com/openc/morph), run:

    bundle update turbot-runner-morph
    git commit Gemfile.lock -m 'Bump turbot-runner-morph' && git push

Finally, [rebuild the Docker image](https://github.com/openc/morph-docker-ruby#readme).
