#!/usr/bin/env bash

#First extract coffee_common
cd ../USlayout/coffee_common/
python2 ../../utils/sarc.py -xzf coffee_common.zlib

#Then coffee_game
cd ../coffee_game/
python2 ../../utils/sarc.py -xzf coffee_game.zlib

#Then coffee_shopItem
cd ../coffee_shopItem/
python2 ../../utils/sarc.py -xzf coffee_shopItem.zlib

#Then map_common
cd ../map_common/
python2 ../../utils/sarc.py -xzf map_common.zlib

#Then map_figure
cd ../map_figure/
python2 ../../utils/sarc.py -xzf map_figure.zlib

#Finally map_room
cd ../map_room/
python2 ../../utils/sarc.py -xzf map_room.zlib


#Clean the folders we don't need
cd ../
rm -rf coffee_common/anim coffee_common/coffee_common_ coffee_common/blyt coffee_common/font
rm -rf coffee_game/anim coffee_game/coffee_game_ coffee_game/blyt
rm -rf coffee_shopItem/anim coffee_shopItem/coffee_shopItem_ coffee_shopItem/blyt coffee_shopItem/font
rm -rf map_common/anim map_common/map_common_ map_common/blyt map_common/font
rm -rf map_figure/anim map_figure/map_figure_ map_figure/blyt
rm -rf map_room/anim map_room/map_room_ map_room/blyt map_room/font

#We wait for user input before cleaning the timg folder
read -p "Press [Enter] once you're done checking!"
rm -rf coffee_common/timg
rm -rf coffee_game/timg
rm -rf coffee_shopItem/timg
rm -rf map_common/timg
rm -rf map_figure/timg
rm -rf map_room/timg
