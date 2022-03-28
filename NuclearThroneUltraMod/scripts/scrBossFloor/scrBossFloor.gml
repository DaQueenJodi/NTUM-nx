///scrBossFloor();
// /@description
///@param
function scrBossFloor(){
	var myFloor = instance_position(x,y,Floor)
	if myFloor != noone
	{
		//Far Left
		ReplaceWithFloor(myFloor.x-40,myFloor.y+8,myFloor.x-64,myFloor.y)
		//Left
		ReplaceWithFloor(myFloor.x-8,myFloor.y+8,myFloor.x-32,myFloor.y)
	
		//Top Left
		ReplaceWithFloor(myFloor.x-8,myFloor.y-8,myFloor.x-32,myFloor.y-32)
		//Top far Left
		ReplaceWithFloor(myFloor.x-40,myFloor.y-8,myFloor.x-32,myFloor.y-32)
		//Top
		ReplaceWithFloor(myFloor.x+8,myFloor.y-8,myFloor.x,myFloor.y-32)
		//Top Right
		ReplaceWithFloor(myFloor.x+40,myFloor.y-8,myFloor.x+32,myFloor.y-32)
		//Top far Right
		ReplaceWithFloor(myFloor.x+72,myFloor.y-8,myFloor.x+64,myFloor.y-32)
	
		//far Top
		ReplaceWithFloor(myFloor.x+8,myFloor.y-40,myFloor.x,myFloor.y-64)
		//far Top Left
		ReplaceWithFloor(myFloor.x-8,myFloor.y-40,myFloor.x-32,myFloor.y-64)
		//far Top far Left
		ReplaceWithFloor(myFloor.x-40,myFloor.y-40,myFloor.x-32,myFloor.y-64)
		//far Top Right
		ReplaceWithFloor(myFloor.x+40,myFloor.y-40,myFloor.x+32,myFloor.y-64)
		//far Top far Right
		ReplaceWithFloor(myFloor.x+72,myFloor.y-40,myFloor.x+64,myFloor.y-64)
	
		//Right
		ReplaceWithFloor(myFloor.x+40,myFloor.y+8,myFloor.x+32,myFloor.y)
		//far Right
		ReplaceWithFloor(myFloor.x+72,myFloor.y+8,myFloor.x+64,myFloor.y)
	
		//Bottom
		ReplaceWithFloor(myFloor.x+8,myFloor.y+40,myFloor.x,myFloor.y+32)
		//Bottom Left
		ReplaceWithFloor(myFloor.x-8,myFloor.y+40,myFloor.x-32,myFloor.y+32)
		//Bottom far Left
		ReplaceWithFloor(myFloor.x-40,myFloor.y+40,myFloor.x-64,myFloor.y+32)
		//Bottom Right
		ReplaceWithFloor(myFloor.x+40,myFloor.y+40,myFloor.x+32,myFloor.y+32)
		//Bottom far Right
		ReplaceWithFloor(myFloor.x+72,myFloor.y+40,myFloor.x+64,myFloor.y+32)
	
		//far Bottom
		ReplaceWithFloor(myFloor.x+8,myFloor.y+72,myFloor.x,myFloor.y+64)
		//far Bottom Left
		ReplaceWithFloor(myFloor.x-8,myFloor.y+72,myFloor.x-32,myFloor.y+64)
		//far Bottom far Left
		ReplaceWithFloor(myFloor.x-40,myFloor.y+72,myFloor.x-64,myFloor.y+64)
		//far Bottom Right
		ReplaceWithFloor(myFloor.x+40,myFloor.y+72,myFloor.x+32,myFloor.y+64)
		//far Bottom far Right
		ReplaceWithFloor(myFloor.x+72,myFloor.y+72,myFloor.x+64,myFloor.y+64)
	}
}