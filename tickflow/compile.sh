#/usr/bin/sh
java -jar ../../tickompiler.jar c ./ Compiled/
java -jar ../../tickompiler.jar p Compiled/ "base.bin edits/edit.bin"
if which citra 2>/dev/null; then
    cp -f C00.bin ~/.config/citra-emu/sdmc/rhmm
else
    # assume flatpak
    cp -f C00.bin ~/.var/app/org.citra_emu.citra/data/citra-emu/sdmc/rhmm
fi