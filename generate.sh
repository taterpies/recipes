#!/bin/bash -x

set -e

cd $(dirname $0)

./index.sh > docs/index.md

git add docs/index.md

git status
