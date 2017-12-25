move_bat:

//get mouse x position
batx=GetRawMouseX()

//check to ensure if bat is not off the right side of screen
if batx>1024-GetSpriteWidth(bat)
	batx=1024-GetSpriteWidth(bat)
endif

//position the bat based on mouse position
SetSpritePosition(bat,batx,GetSpriteY(bat))
return
