#!/usr/bin/env bash

find ./{posts,about} -type f -name '*.md' -exec bash -c 'f={}; pandoc --template=./html.template -o "${f%.md}.html" $f' ';'
