#!/bin/bash
git config --global --add safe.directory /github/workspace
ls -al
hub release create -a ./${APP_FOLDER}/build/outputs/apk/release/**.apk -m "v${GITHUB_REF##*/}" ${GITHUB_REF##*/} 
