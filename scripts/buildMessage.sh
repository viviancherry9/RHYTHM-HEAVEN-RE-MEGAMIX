#!/usr/bin/env bash

mkdir -p ../rhmm/USmessage

cd ../USmessage
rm -f ../rhmm/USmessage/pajama.zlib
python2 ../utils/sarc.py -czf ../rhmm/USmessage/pajama.zlib arc