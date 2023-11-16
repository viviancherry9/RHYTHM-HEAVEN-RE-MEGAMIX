#!/usr/bin/env bash

bash buildTickflow.sh
bash buildMessage.sh
bash buildTreasure.sh
bash buildLayout.sh
# bash buildModel.sh -- TODO
bash distBinaryFiles.sh