#!/bin/bash

source ./env.sh

go get -v -d
go install golang.org/x/mobile/cmd/gomobile@latest
gomobile init
