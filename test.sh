#!/bin/sh

THIS_FILE_PATH=$(
  cd $(dirname $0)
  pwd
)
source "$THIS_FILE_PATH/index.sh"

function eq() {
  if [ "$1" = "a" ]; then
    echo "true"
  else
    echo "false"
  fi
}
function test() {
  local fn=
  local expectValue=
  local ouput=
  fn=${1}
  ouput=$(eval "$fn")
  expectValue=${2}
  echo "test:$fn"
  if [ "$ouput" = "$expectValue" ]; then
    echo "it is ok"
  else
    echo "it is false.expect $ouput = $expectValue"
  fi
}

## file-usage
# ./test.sh
