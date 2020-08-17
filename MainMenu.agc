mainmenu:
	
	
	CreateText(2,"FlyShooter")
	SetTextSize(2,50)
	SetTextPosition(2,(GetVirtualWidth() - GetTextTotalWidth(2))/2, 300)
	
	createtext(3,"HighScore:" + str(highscore))
	SetTextSize(3,30)
	SetTextPosition(3,0,30)
	
	createtext(4,"start")
	settextsize(4,30)
	SetTextPosition(4,(GetVirtualWidth()- GetTextTotalHeight(4))/2,GetVirtualHeight() -200)
	
gosub hidegamesprite
gosub showmenutext
	
	repeat
		sync()
	until getpointerpressed() = 1
	gameover = 0
gosub showgamesprite
gosub hidemenutext	
return

hidegamesprite:
	
	for i = 1 to 115
		SetSpriteVisible(i,0)
	next i
return

showmenutext:
	
	SetTextVisible(2,1)
	SetTextVisible(4,1)
	
return

showgamesprite:

	for i = 1 to 115
		SetSpriteVisible(i,1)
	next i
	
return

hidemenutext:

	SetTextVisible(2,0)
	SetTextVisible(4,0)
	
return
