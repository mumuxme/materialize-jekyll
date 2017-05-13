#!/bin/bash

JEKYLL_HOME=`pwd`
DIR_CONTAINER=/materialize-jekyll

command="docker run --rm -p 4000:4000 \
-v $JEKYLL_HOME/assets:$DIR_CONTAINER/assets \
-v $JEKYLL_HOME/_data:$DIR_CONTAINER/_data \
-v $JEKYLL_HOME/_drafts:$DIR_CONTAINER/_drafts \
-v $JEKYLL_HOME/_includes/tab:$DIR_CONTAINER/_includes/tab \
-v $JEKYLL_HOME/about.md:$DIR_CONTAINER/about.md \
-v $JEKYLL_HOME/_config.yml:$DIR_CONTAINER/_config.yml \
-v $JEKYLL_HOME/_posts:$DIR_CONTAINER/_posts \
"

$command myjekyll bundle exec jekyll s -H 0.0.0.0
