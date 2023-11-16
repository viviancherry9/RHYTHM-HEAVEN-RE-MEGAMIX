# patch_base.sh
#   this script doesn't need to be ran on build, but this way we can better keep track
#   of which prologues we have/haven't patched
#   more base.bin patches maybe coming in the future?

patch_base() {
    echo "patching index 0x$1 to SFX 0x$2" 
    echo -e "tmp.bin\ntmp.bin\n$1\n$2" | python prologue_patcher.py > /dev/null || exit 1
}

cp base.bin tmp.bin

patch_base 55 01000040

mv tmp.bin edit.bin