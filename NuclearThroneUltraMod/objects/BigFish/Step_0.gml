function healMe(amount) {
	if Player.loops > 0 {
		amount *= 3
	}
	
    my_health += amount;
    with instance_create(x, y - 16, HealFX)
    depth = -3;
    if my_health > maxhealth
    my_health = maxhealth;
}

function suck() {
	sprite_index=spr_fire;
	suckstrength+=0.091;
	with Player
	{
		if point_distance(x,y,other.x,other.y) < 240
		{
			if place_free(x+lengthdir_x(other.suckstrength,point_direction(x,y,other.x,other.y)),y)
			x += lengthdir_x(other.suckstrength,point_direction(x,y,other.x,other.y))
			if place_free(x,y+lengthdir_y(other.suckstrength,point_direction(x,y,other.x,other.y)))
			y += lengthdir_y(other.suckstrength,point_direction(x,y,other.x,other.y))
		}
		else 
		{
			other.alarm[1]=5;
			other.alarm[2]=0;
		}
	}
	
	with BoneFish
	{
		if point_distance(x,y,other.x,other.y) < 100
		{
			if place_free(x+lengthdir_x(7,point_direction(x,y,other.x,other.y)),y)
			x += lengthdir_x(other.suckstrength,point_direction(x,y,other.x,other.y))
			if place_free(x,y+lengthdir_y(7,point_direction(x,y,other.x,other.y)))
			y += lengthdir_y(other.suckstrength,point_direction(x,y,other.x,other.y))
		}
		
		if point_distance(x,y,other.x,other.y) < 15 {
			snd_play(snd_dead, hurt_pitch_variation);
			instance_destroy();
			with other {
				healMe(10);
			}
		}
	}

	direction = point_direction(x,y,target.xprevious,target.yprevious)
	BackCont.shake += 0.5
	speed=0;
	repeat(2) {
		with instance_create(x+lengthdir_x(16+random(64),direction),y+lengthdir_y(16+random(64),direction),Dust)
		motion_add(point_direction(x,y,other.x,other.y),other.suckstrength+random(2))
	}
}


event_inherited()

if alarm[7] > 0 {
	if sprite_index != spr_hurt {
		sprite_index = spr_fire;
	}
	
	direction = persistent_direction;
	motion_add(persistent_direction, 7)
}

if alarm[6] > 0 {
	if sprite_index != spr_hurt {
		sprite_index = spr_endfire;
	}
}

//if sprite_index != spr_hurt
//motion_add(direction,0.8)
if walk > 0
{
	walk -= 1
	motion_add(direction, 1)
}

if hspeed > 0
right = 1
else if hspeed < 0
right = -1

if speed > maxspeed
speed = maxspeed

if target>0
{
	if alarm[2]>0
	{
		if point_distance(x,y,Player.x,Player.y) < 60 {
			alarm[2] = 0;
			alarm[1] = 3;
		} else {
			suck();
		}
	} else {
		suckstrength=0;
		if sprite_index == spr_hurt && alarm[6] < 1 && alarm[7] < 1 {
			motion_add(point_direction(x,y,Player.x,Player.y), maxspeed)
		}
	}
}
