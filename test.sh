#!/bin/bash
set -eu
./run_lint JavaScript-Plugin-Architecture ja/
./run_lint gitbook-starter-kit ja/
./run_lint scala_text src/
./run_lint magi-hacker "chapter-01/ chapter-02/ chapter-03/ chapter-04/ chapter-05/"
./run_lint docs.userdive.com ja/
./run_lint rails-training ja/