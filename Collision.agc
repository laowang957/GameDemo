collision:

	if GetSpriteCollision(3,4) = 1 and laserFired = 1 
		PlaySound(explode)
		score = score + 10
		enemyx = -50 : enemyy = -50
		laserFired = 0
		laserx = -100
		SetTextString(1,"score:" + str(score))
		
	endif
	
	if GetSpriteCollision(1,4) = 1
		PlaySound(gamegg)
		score = 0
		enemyx = -50 : enemyy = -50
		playerx = GetVirtualWidth() / 2 - GetSpriteWidth(1) / 2: playery = GetVirtualHeight() - GetSpriteHeight(1)
		laserFired = 0
		laserx = -100
		SetTextString(1,"score:" + str(score))
		gameover = 1
		SetSpritePosition(1,GetVirtualWidth() / 2 - GetSpriteWidth(1) / 2,GetVirtualHeight() - GetSpriteHeight(1))
	endif
	
	
	if GetSpriteY(4) > GetVirtualHeight()
		score = 0
		enemyx = -50 : enemyy = -50
		playerx = GetVirtualWidth() / 2 - GetSpriteWidth(1) / 2: playery = GetVirtualHeight() - GetSpriteHeight(1)
		laserFired = 0
		laserx = -100
		SetTextString(1,"score:" + str(score))
		gameover = 1
		SetSpritePosition(1,GetVirtualWidth() / 2 - GetSpriteWidth(1) / 2,GetVirtualHeight() - GetSpriteHeight(1))
	endif
	
	for i = 0 to 4
	if GetSpriteCollision(110+i,1) = 1
		PlaySound(gamegg)
		score = 0
		enemyx = -50 : enemyy = -50
		playerx = GetVirtualWidth() / 2 - GetSpriteWidth(1) / 2: playery = GetVirtualHeight() - GetSpriteHeight(1)
		laserFired = 0
		laserx = -100
		SetTextString(1,"score:" + str(score))
		gameover = 1
		for i = 0 to 4
			SetSpritePosition(110+i,-50,-50)
		next i	
		SetSpritePosition(1,GetVirtualWidth() / 2 - GetSpriteWidth(1) / 2,GetVirtualHeight() - GetSpriteHeight(1))
	endif
	next i
	
	if score > highscore 
			highscore = score
			SetTextString(3,"highscore:" + str(highscore))
	endif	
return	
