#/usr/bin/sh
java -jar ../../tickompiler.jar c ./ Compiled/
java -jar ../../tickompiler.jar p Compiled/ "base.bin edits/edit.bin"
mv -f C00.bin ~/.local/share/citra-emu/sdmc/rhmm
killall -9 citra-qt