playershoots:

	if  getrawmouseleftstate() = 1 and laserFired = 0
		PlaySound(laserSound)
		laserFired = 1
		laserx = GetSpriteX(1) + GetSpriteWidth(1)/2 - GetSpriteWidth(3)/2
		lasery = GetSpriteY(1) - 40
	endif

    if  laserFired = 1
	   lasery = lasery - 20
	endif
	
	if lasery < -GetSpriteHeight(3)
		laserFired = 0
	endif
	
	SetSpritePosition(3,laserx,lasery)
return
