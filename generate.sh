#!/bin/bash

rm -rf ./build

function generate {
	stamina --template $1 --data $2

	if [[ $? -gt 0 ]]; then
		exit $?
	fi
}

template=templates/git-project.html

generate $template sites/zapperfly.json
generate $template sites/eth-ingest.json
generate $template sites/kibana-mithril.json
generate $template sites/excelastic.json

echo all sites generated.
