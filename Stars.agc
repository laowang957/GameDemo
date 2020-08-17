makestars:

	CreateImageColor(5,255,255,255,255)
	for i = 0 to 100
		CreateSprite(i+5,5)
		SetSpriteSize(i+5,2,2)
		SetSpritePosition(i+5,Random(1,512),Random(1,1024))
	next i

return

movestars:

for i = 0 to 100
	starsy = (GetSpriteY(i+5) + Mod(getspriteX(i+5),4)) + 1
	if starsy > 1024
		starsy = 0
	endif

	SetSpritePosition(i+5,GetSpriteX(i + 5),starsy)
next i
return
