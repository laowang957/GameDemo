loader:
	
	rem 加载出飞机的图片
	LoadImage(1,"TopFighter1.png")
	CreateSprite(1,1)
	
	rem 加载背景图
	//LoadImage(2,"space.jpg")
	//CreateSprite(2,2)
	
	rem 加载子弹图片
	LoadImage(3,"laser.png")
	CreateSprite(3,3)
		
	rem 加载敌人的图片
	LoadImage(4,"enemy.png")
	CreateSprite(4,4)
	
	
	rem 加载一个敌人子弹文件
	LoadImage(2,"apple.png")
	for i = 0 to 20
		createsprite(110+i,2)
		SetSpritePosition(110+i,-50,-50)
		SetSpriteSize(110+i,30,30)
	next i
	
	
	rem 设置背景图片的大小
	rem SetSpriteSize(2,360,720)

	rem 设置飞机图片的深度即使其在背景图上面 默认加载为0 按顺序加载即先写的在后面
	SetSpriteDepth(1,1)
	
	rem 设置飞机图原始位置（地图最下端中间）通过xy轴来设置默认最上左为0,0
	playerx = GetVirtualWidth() / 2 - GetSpriteWidth(1) / 2
	playery = GetVirtualHeight() - GetSpriteHeight(1)
	
	SetSpritePosition(1,playerx,playery)
	SetSpritePosition(3,-100,-100)
	
	enemyx = (GetVirtualWidth() - GetSpriteWidth(4)/2)/2
	enemyy = 0
	SetSpriteSize(4,GetSpriteWidth(4)/2,GetSpriteHeight(4)/2)
	
return	
