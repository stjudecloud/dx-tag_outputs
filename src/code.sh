#!/bin/bash
set -e -x -u -o pipefail

main() {

  . ~/environment
  TAG="sjcp-result-file"

  . ~/environment
  for file in $(echo ${files_to_tag[@]} | jq .[] -r); do
    dx tag $DX_PROJECT_CONTEXT_ID:$file $TAG
  done
}
