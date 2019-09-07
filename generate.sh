#!/bin/bash

rm -rf ./build

function generate {
	stamina --template $1 --data $2

	if [[ $? -gt 0 ]]; then
		exit $?
	fi
}

template=templates/git-project.html

generate $template sites/zapperfly.yaml
generate $template sites/eth-ingest.yaml
generate $template sites/kibana-mithril.yaml
generate $template sites/excelastic.yaml
generate $template sites/mouse.yaml

echo all sites generated.
