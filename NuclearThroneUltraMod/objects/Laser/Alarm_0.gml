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
	if (Player.race=11 && Player.ultra_got[42]==1 && aimed=false)//HUNTER ULTRA B Homing projectiles
	{
	aimed=true;
	direction=point_direction(x,y,mouse_x,mouse_y);
	target=instance_nearest(x+lengthdir_x(80,direction),y+lengthdir_y(80,direction),enemy);// nearest in direction of cursor

	if instance_exists(target)
	{
	        if!(collision_line(x,y,target.x,target.y,Wall,false,true) )//No walls between player and target?
	        {
	            if(direction<point_direction(x,y,target.x,target.y)+30+(30*Player.skill_got[19]))
	            {
	            image_angle=point_direction(x,y,target.x,target.y);
	            }
	       }
	}
	}
}

var dir;
dir = 0

do {x += lengthdir_x(2,image_angle) y += lengthdir_y(2,image_angle) dir += 1}
until (place_meeting(x,y,hitme) and dir > 16) or place_meeting(x,y,Wall) or dir > 160

if laserhit>0// && random(3)<1
{
if ( place_meeting(x+8,y-4,Wall) ||place_meeting(x-8,y-4,Wall) ) && ( place_meeting(x+8,y+4,Wall) ||place_meeting(x-8,y+4,Wall) )
{
    with instance_create(x,y,Laser)
    {image_angle = other.image_angle*-1+180;
    team = other.team
    laserhit=other.laserhit-1;
    
    do {x += lengthdir_x(2,image_angle) y += lengthdir_y(2,image_angle) dir += 1}
until (place_meeting(x,y,hitme) and dir > 16) or place_meeting(x,y,Wall) or place_meeting(x,y,VikingWall) or dir > 160
    
    alarm[0]=1;
    }
}
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
laserhit=0;
}

alarm[0] = 2

image_xscale = point_distance(x,y,xstart,ystart)/2
instance_create(x,y,Smoke)

