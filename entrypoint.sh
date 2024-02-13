#!/bin/sh
# TODO: Update Configurations
echo "Started Building"
export AwasmRegion=$INPUT_REGION
if [ "$INPUT_CACHED" = "false" ]; then
  release=$(awasm build --app $INPUT_APP --description "$INPUT_DESCRIPTION" --id --no-cache)
else
  release=$(awasm build --app $INPUT_APP --description "$INPUT_DESCRIPTION" --id)
fi

if [ -z "$release" ]
then
  echo "Build failed"
  exit 1
fi
echo ::set-output name=release::$release
echo "RELEASE=$release" >> $GITHUB_ENV
