playermove:
	
	playerx = playerx + GetDirectionX() * 20
	
	
	playerx = playerx + GetJoystickX() * 20
	playery = playery + GetJoystickY() * 20
	

	if getrawmouseleftstate() = 1
		if GetRawMouseX() >= getspriteX(1)-20 and GetRawMouseX() <= GetSpriteX(1) + GetSpriteWidth(1) + 20
			if GetRawMouseY()>=GetSpriteY(1)-20 and getrawmousey()<= GetSpriteY(1)+GetSpriteHeight(1) + 20
				playerx = getrawmouseX() - GetSpriteWidth(1)/2
				playery = getrawmouseY() - GetSpriteHeight(1)/2
				SetSpritePosition(1,playerx,playery) 
			endif
		endif
	endif
	if  playerx < 0
		playerx = 0
	endif
	
	if  playerx > GetVirtualWidth() - GetSpriteWidth(1)
		playerx = GetVirtualWidth() - GetSpriteWidth(1)
	endif
	
	if  playery < 0
		playery = 0
	endif
	
	if  playery > GetVirtualHeight() - GetSpriteHeight(1)
		playery = GetVirtualHeight() - GetSpriteHeight(1)
	endif
	
	SetSpritePosition(1,playerx,playery)
	
return
