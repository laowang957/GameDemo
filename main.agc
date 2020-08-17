SetVirtualResolution(512,1024)

rem 1为使用新字体 0为使用旧字体 默认为0
UseNewDefaultFonts(1)

playerx as float
playery as float

laserx as float = -100
lasery as float
laserFired = 0

enemyx as float
enemyy as float
enemy_direction = 4
score = 0
highscore = 0
enemyFired = 0
gameover = 1


#include "Loader.agc"
#include "PlayerMove.agc"
#include "PlayerShoots.agc"
#include "Sounds.agc"
#include "EnemyMove.agc"
#include "Collision.agc"
#include "Text.agc"
#include "Stars.agc"
#include "MainMenu.agc"

Gosub loader
Gosub sounds
Gosub music
Gosub makestars
Gosub text

do
	
	Gosub playermove
	Gosub playershoots
	if gameover = 1
		score = 0
		SetTextString(1,"score:" + str(score))
		Gosub mainmenu
	endif
	Gosub movestars
	Gosub enemymove
	Gosub enemyshoot
	Gosub collision
	//Print(GetRawMouseLeftPressed())
	rem Print("score:" + str(score))
	sync()
loop

