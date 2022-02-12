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
		if point_distance(x,y,other.x,other.y) < 80
		{
			if place_free(x+lengthdir_x(other.suckstrength*3,point_direction(x,y,other.x,other.y)),y)
			x += lengthdir_x(other.suckstrength,point_direction(x,y,other.x,other.y))
			if place_free(x,y+lengthdir_y(other.suckstrength*3,point_direction(x,y,other.x,other.y)))
			y += lengthdir_y(other.suckstrength,point_direction(x,y,other.x,other.y))
		}
		
		if point_distance(x,y,other.x,other.y) < 10 {
			snd_play(snd_dead, hurt_pitch_variation);
			instance_destroy();
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

//if sprite_index != spr_hurt
//motion_add(direction,0.8)
if walk > 0
{
	walk -= 1
	motion_add(direction, 0.9)
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
			alarm[3] = 10;
			alarm[4] = 20;
		} else {
			suck();
		}
	} else {
		suckstrength=0;
	}

	if point_distance(x,y,target.x,target.y)<64&&random(10)<1//BITE TACKLE SHIT YO! DANGER IN THE HOUSE!
	motion_add(point_direction(x,y,target.x,target.y),4);
	if point_distance(x,y,target.x,target.y)<16//GIVE HIM A CHANCE
	direction=point_direction(x,y,target.x,target.y)+180;
	//motion_add(point_direction(x,y,target.x,target.y)+180,4);

	if sprite_index=spr_hurt
	motion_add(point_direction(x,y,target.x,target.y),speed*0.2);

	//if sprite_index=spr_hurt
	//direction=point_distance(x,y,target.x,target.y)
}
//tackle can go over maxspeed by 1
if speed > maxspeed+1
speed = maxspeed+1


