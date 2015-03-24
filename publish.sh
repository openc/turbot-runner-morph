#!/bin/bash

gem build turbot-runner-morph.gemspec
gem push $(ls *gem|tail -1)

function clean {
 rm *gem
}
trap clean EXIT
