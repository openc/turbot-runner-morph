# turbot-runner-morph

[![Gem Version](https://badge.fury.io/rb/turbot-runner-morph.svg)](https://badge.fury.io/rb/turbot-runner-morph)
[![Build Status](https://secure.travis-ci.org/openc/turbot-runner-morph.png)](https://travis-ci.org/openc/turbot-runner-morph)
[![Dependency Status](https://gemnasium.com/openc/turbot-runner-morph.png)](https://gemnasium.com/openc/turbot-runner-morph)
[![Coverage Status](https://coveralls.io/repos/openc/turbot-runner-morph/badge.png)](https://coveralls.io/r/openc/turbot-runner-morph)
[![Code Climate](https://codeclimate.com/github/openc/turbot-runner-morph.png)](https://codeclimate.com/github/openc/turbot-runner-morph)

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

Finally, deploy [morph](https://github.com/sebbacon/morph/).
