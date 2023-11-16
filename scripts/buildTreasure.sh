#!/usr/bin/env bash

mkdir -p ../rhmm/treasure

cd ../treasure
rm -f ../rhmm/treasure/treasure_world_data.zlib
python2 ../utils/sarc.py -czf ../rhmm/treasure/treasure_world_data.zlib arc