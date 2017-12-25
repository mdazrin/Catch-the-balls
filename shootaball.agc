Shoot_a_ball:

//if random number out of 60=5, then create a ball in the scene
if random(1,60)=5 and ball2move<=ball_total
	
	//position it in the middle
	SetSpriteposition(ball2move,512,300)
	
	//make sure it has circular collision
	SetSpriteShapeCircle(ball2move,0,0,22)
	
	//turn on physic on this object - dynamic body
	SetSpritePhysicsOn(ball2move,2)
	
	//give the ball random rotation
	SetSpritePhysicsAngularVelocity(ball2move,random(0,10))
	
	//apply mass to the ball
	SetSpritePhysicsMass(ball2move,0.1)
	
	//apply random negative force to push the ball up to the screen
	// -random(x,x) means upward
	SetSpritePhysicsVelocity(ball2move,0, -random(90,180))
	
	ball2move=ball2move+1
endif

return
	
