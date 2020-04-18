#!/bin/sh

function fs_exists() {
  local file=
  if [ -n "${1}" ]; then
    file="${1}"
  fi
  if [ -e "$file" ]; then
    echo "true"
  else
    echo "false"
  fi
}
# function usage
# fs_exists "xx"

function fs_is_dir() {
  local file=
  if [ -n "${1}" ]; then
    file="${1}"
  fi
  if [ -d "$file" ]; then
    echo "true"
  else
    echo "false"
  fi
}
function fs_get_file_path() {
  local str=
  local file=
  str="${1}"
  for file in $(
    ls "${str}"
  ); do
    # isDir
    if [ -d "${str}/${file}" ]; then
      fs_get_file_path "${str}/${file}"
    else
      echo "${str}/${file}"
    fi
  done
}
## function
# fs_get_file_path "$SRC_PATH"

## file usage
#
