
// Project: Catch the balls 
// Created: 2017-04-01

// show all errors
//SetErrorMode(2)

// set window properties
SetWindowTitle( "Catch the balls" )
SetWindowSize( 1024, 768, 0 )
SetWindowAllowResize( 1 ) // allow the user to resize the window

// set display properties
SetVirtualResolution( 1024, 768 ) // doesn't have to match the window
SetOrientationAllowed( 1, 1, 1, 1 ) // allow both portrait and landscape on mobile devices
SetSyncRate( 30, 0 ) // 30fps instead of 60 to save battery
SetScissor( 0,0,0,0 ) // use the maximum available screen space, no black borders
UseNewDefaultFonts( 1 ) // since version 2.0.22 we can use nicer default fonts


#include "makesprites.agc"
#include "shootaball.agc"
#include "movebat.agc"

//SetRawMouseVisible(0)
SetPhysicsDebugOn()

bat=1
ball_total=15
ball2move=2
boards=ball_total+2
hitcount=0
hitforce=-400

gosub make_sprites


do
	
	gosub move_bat
	gosub Shoot_a_ball
    Sync()
    
    //after sync, check to see if any of the balls have hit the bat
    //this means checking every ball against bat, so we use the loop
    
    for i=1 to ball_total
		hit=GetPhysicsCollision(bat,1+i)
		if hit=1
			//yes the ball has hit the bat, apply a negative velocity force to kick the ball
			SetSpritePhysicsVelocity(1+i,0,hitforce)
			//Print("Hit "+str(i))
			//increase the hitforce for the next collision (makes the game harder)
			hitforce=hitforce-5
		endif
	next i
	
	//spin the boards
	
	SetSpriteAngle(boards,GetSpriteAngle(boards)+1)
	SetSpriteAngle(boards+1,GetSpriteAngle(boards+1)-1)
	
loop
