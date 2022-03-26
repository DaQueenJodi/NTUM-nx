if(instance_exists(Player)){
	if isog
	{
		var um = GetPlayerUltramod()
		if um == ultramods.laserHeavyBullet
		{
			with instance_create(x,y,Shell)
			motion_add(other.image_angle+Player.right*100+random(50)-25,2+random(2))
			snd_play_fire(sndHeavyMachinegun);
			with instance_create(x,y,HeavyBullet)
			{motion_add(other.image_angle,16)
			image_angle = direction
			team = other.team
			alarm[11] = 0;}
		
			instance_destroy(id,false);
			exit;
		}
		else if um == ultramods.boltLaser
		{
			with instance_create(x,y,Shell)
			motion_add(other.image_angle+Player.right*100+random(50)-25,2+random(2))
			snd_play_fire(sndHeavyCrossbow);
			with instance_create(x,y,Bolt)
			{motion_add(other.image_angle,24)
			image_angle = direction
			team = other.team
			alarm[11] = 0;}
		
			instance_destroy(id,false);
			exit;
		}
	}
	isog = false;
	if (aimed=false && team == 2)
	{
		aimed=true;
		image_angle = scrAimAssistLaser(image_angle);
	}
}

var dir;
dir = 0

do {x += lengthdir_x(2,image_angle) y += lengthdir_y(2,image_angle) dir += 1}
until (place_meeting(x,y,hitme) and dir > 16) or place_meeting(x,y,Wall) or dir > 160

if laserhit>0// && random(3)<1
{
//	var xx = x + lengthdir_x(3,image_angle+180);
//	var yy = y + lengthdir_y(3,image_angle+180);
//if ( place_meeting(x+8,y-4,Wall) ||place_meeting(x-8,y-4,Wall) ) && ( place_meeting(x+8,y+4,Wall) ||place_meeting(x-8,y+4,Wall) )
if place_meeting(x,y,Wall) || place_meeting(x,y,hitme)
{
    with instance_create(x,y,Laser)
    {
		//if !collision_line(xx-4,yy,xx+4,yy,Wall,false,false)
			//image_angle = other.image_angle*-1//180-other.image_angle;
		//else
			image_angle = 180-other.image_angle;
		x += lengthdir_x(4,image_angle);
		y += lengthdir_y(4,image_angle);
		if collision_point(x,y,Wall,false,false)
		{
			x -= lengthdir_x(4,image_angle);
			y -= lengthdir_y(4,image_angle);
			image_angle = other.image_angle*-1
			x += lengthdir_x(4,image_angle);
			y += lengthdir_y(4,image_angle);
		}
		else if collision_point(x,y,hitme,false,false) && instance_position(x,y,hitme).team != team
		{
			x -= lengthdir_x(4,image_angle);
			y -= lengthdir_y(4,image_angle);
			image_angle = other.image_angle*-1
			x += lengthdir_x(4,image_angle);
			y += lengthdir_y(4,image_angle);
		}
	    team = other.team
		sprite_index=sprBouncingLaser;
	    laserhit=other.laserhit-1;
    
    do {x += lengthdir_x(2,image_angle) y += lengthdir_y(2,image_angle) dir += 1}
until (place_meeting(x,y,hitme) and dir > 16) or place_meeting(x,y,Wall) or place_meeting(x,y,VikingWall) or dir > 160
    
    alarm[0]=1;
    }
	laserhit=0;
}/*
else
{	//bouncy laser
    with instance_create(x - lengthdir_x(8,image_angle),y - lengthdir_y(8,image_angle),Laser)
    {image_angle = other.image_angle*-1;
    team = other.team
    laserhit=other.laserhit-1;
    sprite_index=sprBouncingLaser;
    image_yscale -= 0.15
    do {x += lengthdir_x(2,image_angle) y += lengthdir_y(2,image_angle) dir += 1}
until (place_meeting(x,y,hitme) and dir > 16) or place_meeting(x,y,Wall) or place_meeting(x,y,VikingWall) or dir > 160
    
    alarm[0]=1;
    }
}
laserhit=0;*/
}

alarm[0] = 2

image_xscale = point_distance(x,y,xstart,ystart)*0.5
instance_create(x,y,Smoke)

