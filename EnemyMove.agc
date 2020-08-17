enemymove:
	
	enemyy = enemyy + 1
	
	if enemy_direction = 4 and enemyx > GetVirtualWidth() - GetSpriteWidth(4) 
		enemy_direction = -4
	endif
	
	
	if enemy_direction = -4 and enemyx < 0
		enemy_direction = 4
	endif
	
	enemyx = enemyx + enemy_direction
	
	SetSpritePosition(4,enemyx,enemyy)
	
return

enemyshoot:
	
	if enemyFired = 0 
		if Random(1,100) = 5
			enemyFired = 1
			for i = 0 to 20
				SetSpritePosition(110+i,getspriteX(4)+60,GetSpriteY(4)+70)
			next i
		endif
	endif
	
	if enemyFired = 1
		for i = 0 to 20
			SetSpritePosition(110+i,getspriteX(110+i) + round((i - 2) /2.1 *3),GetSpriteY(110+i) + 3)
		
		next i
	endif
	
	if getspriteY(110) > GetVirtualHeight()
		enemyFired = 0
	endif	
				
return
	
