///ReplaceWithFloor();
// /@description
///@param
function ReplaceWithFloor(x1,y1,x2,y2){
	if !collision_point(x1,y1,Floor,false,true)
	{
		var msk = mask_index;
		mask_index = mskFloor;
		var walls = ds_list_create();
		var al = instance_place_list(x2,y2,Wall,walls,false)
		for (var i = 0; i < al; i++) {
			instance_destroy(walls[| i]);
		}
		ds_list_clear(walls);
		var al = instance_place_list(x2,y2,TopDecal,walls,false)
		for (var i = 0; i < al; i++) {
			instance_destroy(walls[| i]);
		}
		ds_list_destroy(walls);
		with instance_create(x2,y2,Floor)
		{
			var mskf = mask_index;
			mask_index = mskWall;
			//Left
			if !place_meeting(x-16,y,Floor)
				instance_create(x-16,y,Wall)
			if !place_meeting(x-16,y+16,Floor)
				instance_create(x-16,y+16,Wall)
			if !place_meeting(x-16,y-16,Floor)
				instance_create(x-16,y-16,Wall)
			if !place_meeting(x-16,y+32,Floor)
				instance_create(x-16,y+32,Wall)
			//Top
			if !place_meeting(x-16,y-16,Floor)
				instance_create(x-16,y-16,Wall)
			if !place_meeting(x,y-16,Floor)
				instance_create(x,y-16,Wall)
			if !place_meeting(x+16,y-16,Floor)
				instance_create(x+16,y-16,Wall)
			if !place_meeting(x+32,y-16,Floor)
				instance_create(x+32,y-16,Wall)
			
			//Right
			if !place_meeting(x+32,y,Floor)
				instance_create(x+32,y,Wall)
			if !place_meeting(x+32,y+16,Floor)
				instance_create(x+32,y+16,Wall)
			if !place_meeting(x+32,y+32,Floor)
				instance_create(x+32,y+32,Wall)
			if !place_meeting(x+32,y-16,Floor)
				instance_create(x+32,y-16,Wall)
			//Bottom
			if !place_meeting(x,y+32,Floor)
				instance_create(x,y+32,Wall)
			if !place_meeting(x+16,y+32,Floor)
				instance_create(x+16,y+32,Wall)
			if !place_meeting(x-16,y+32,Floor)
				instance_create(x-16,y+32,Wall)
			if !place_meeting(x+32,y+32,Floor)
				instance_create(x+32,y+32,Wall)
			mask_index = mskf;
		}
		mask_index = msk;
	}
}