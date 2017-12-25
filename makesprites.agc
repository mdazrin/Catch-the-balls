make_sprites:

CreateImageColor(1,255,0,0,255)
CreateSprite(bat,1)
SetSpriteSize(bat,100,20)
SetSpritePosition(bat,512,740)

//turn physic on for this sprite, use mod 3 so it's not affected by forces and collision
SetSpritePhysicsOn(bat,3)

LoadImage(2,"small_ball.png")
for i=1 to ball_total
	CreateSprite(i+1,2)
	SetSpriteX(i+1,-100) //dont want to see the ball, so just off screen them
next i


//turn off  bounce to bottom floor
SetPhysicsWallBottom(0)

//Create two rotating boards
//create green image
CreateImageColor(3,0,255,0,255)

//make left board
CreateSprite(boards,3)

//Sets it's size 160 on x axis, 20 in the y
SetSpriteSize(boards,160,20)

//Position on the left side of the screen
SetSpritePosition(boards,40,400)

//Turns on physic and set on kinematic
SetSpritePhysicsOn(boards,3)

//create right side,same settings
CreateSprite(boards+1,3)
SetSpriteSize(boards+1,160,20)
SetSpritePosition(boards+1,1024-200,400)
SetSpritePhysicsOn(boards+1,3)
