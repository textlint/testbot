#!/bin/bash

declare currentDir=$(pwd)
declare dirName="$1"
function echo_message(){
  echo "=> $1"
}

echo_message "${dirName}"
cd "${currentDir}/${dirName}"
echo_message "Install textlint"
npm install textlint@latest --cache-min 99999999
textlintrc-to-pacakge-list .textlintrc | xargs npm install --cache-min 99999999
echo_message "Run textlint"
$(npm bin)/textlint -v
$(npm bin)/textlint ja/