#!/usr/bin/env bash

function codegen {
    lang=$1
    suffix=$2
    modelDir=$3
    echo ========================  $structure:$lang ==========================
    mkdir -p gen/sdk/$structure/$lang
    echo swagger-codegen generate -l $lang -i openapi.json -o gen/sdk/$structure/$lang
         swagger-codegen generate -l $lang -i openapi.json -o gen/sdk/$structure/$lang | grep -v INFO
    ls -1 gen/sdk/$structure/$lang/${modelDir}/*.$suffix
}

test -d gen/sdk && rm -rf gen/sdk

if command -v spectral
then
    spectral lint -r .spectral.yaml openapi.yaml
    rc=$?
    if [[ $rc -gt 0 ]]; then exit $?; fi
fi

for structure in allOf # oneOf anyOf
do
    sed s/allOf/$structure/ < openapi.yaml | js-yaml > openapi.json
    codegen typescript-angular ts     model
    codegen java               java   src/main/java/io/swagger/client/model
    codegen go                 go     .
done
