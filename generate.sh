#!/bin/bash -x

set -e

./index.sh > docs/index.md

git add docs/index.md

git status
