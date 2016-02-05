# turbot-runner-morph

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
