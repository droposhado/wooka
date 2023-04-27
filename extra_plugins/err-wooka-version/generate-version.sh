#!/bin/sh

SHA=$(git rev-parse HEAD)
REF=$(git symbolic-ref HEAD)

echo "{\"sha\":\"${SHA}\",\"ref\":\"${REF}\"}"
