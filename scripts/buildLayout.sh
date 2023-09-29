#First rebuild coffee_common
echo "Rebuilding coffee_common..."
cd ../USlayout/coffee_common/
python2 ../../utils/sarc.py -xzf coffee_common.zlib
cp new/* timg/
rm ../../rhmm/USlayout/coffee_common.zlib
python2 ../../utils/sarc.py -czf ../../rhmm/USlayout/coffee_common.zlib anim blyt font timg

#Then coffee_game
echo "Rebuilding coffee_game..."
cd ../coffee_game/
python2 ../../utils/sarc.py -xzf coffee_game.zlib
cp new/* timg/
rm ../../rhmm/USlayout/coffee_game.zlib
python2 ../../utils/sarc.py -czf ../../rhmm/USlayout/coffee_game.zlib anim blyt timg

#Then coffee_shopItem
echo "Rebuilding coffee_shopItem..."
cd ../coffee_shopItem/
python2 ../../utils/sarc.py -xzf coffee_shopItem.zlib
cp new/* timg/
rm ../../rhmm/USlayout/coffee_shopItem.zlib
python2 ../../utils/sarc.py -czf ../../rhmm/USlayout/coffee_shopItem.zlib anim blyt font timg

#Then map_common
echo "Rebuilding map_common..."
cd ../map_common/
python2 ../../utils/sarc.py -xzf map_common.zlib
cp new/* timg/
rm ../../rhmm/USlayout/map_common.zlib
python2 ../../utils/sarc.py -czf ../../rhmm/USlayout/map_common.zlib anim blyt font timg

#Then map_figure
echo "Rebuilding map_figure..."
cd ../map_figure/
python2 ../../utils/sarc.py -xzf map_figure.zlib
cp new/* timg/
rm ../../rhmm/USlayout/map_figure.zlib
python2 ../../utils/sarc.py -czf ../../rhmm/USlayout/map_figure.zlib anim blyt timg

#Finally map_room
echo "Rebuilding map_room..."
cd ../map_room/
python2 ../../utils/sarc.py -xzf map_room.zlib
cp new/* timg/
rm ../../rhmm/USlayout/map_room.zlib
python2 ../../utils/sarc.py -czf ../../rhmm/USlayout/map_room.zlib anim blyt font timg


#cleanup
cd ../
rm -rf coffee_common/anim coffee_common/coffee_common_ coffee_common/blyt coffee_common/font coffee_common/timg
rm -rf coffee_game/anim coffee_game/coffee_game_ coffee_game/blyt coffee_game/timg
rm -rf coffee_shopItem/anim coffee_shopItem/coffee_shopItem_ coffee_shopItem/blyt coffee_shopItem/font coffee_shopItem/timg
rm -rf map_common/anim map_common/map_common_ map_common/blyt map_common/font map_common/timg
rm -rf map_figure/anim map_figure/map_figure_ map_figure/blyt map_figure/timg
rm -rf map_room/anim map_room/map_room_ map_room/blyt map_room/font map_room/timg
