basefn = input("Name of base file to patch> ")
base = bytearray(open(basefn, "rb").read())

outfn = input("Name of file to save the changes to> ")
out = open(outfn, "wb")

index = int(input("Excluding the '0x', index in hex for the game you want to patch >"), 16)
sfx = int(input("Excluding the '0x', index in hex for the SFX you want as prologue music > "), 16)
sfx = sfx.to_bytes(4, "little")

if index >= 0x100:
    index -= 0x100
    for i in range(4):
        base[0x3358 + index*0x24 + 0x1c + i] = sfx[i]
else:
    for i in range(4):
        base[index*0x34 + 0x28 + i] = sfx[i]

out.write(base)
out.close()