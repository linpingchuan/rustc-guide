#!/bin/bash
set -ex

BOOK_DIR=book

# Only upload the built book to github pages if it's a commit to master
if [ "$TRAVIS_BRANCH" = master -a "$TRAVIS_PULL_REQUEST" = false ]; then
    mdbook build 
else
    echo Skipping 'mdbook build' because this is not master or this is just a PR.
fi
