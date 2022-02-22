event_inherited()


if (alarm[4] < 0) {
	aggression += 1;
	
	if (instance_exists(Player) && point_distance(Player.x,Player.y,x,y) < 80) {
		dodge = 0;
	}
	
	if walk > 0
	{
		walk -= 1
		motion_add(direction,3)
		if target > 0
		mp_potential_step(target.x,target.y,2,false)
	}

	if speed > 6.2
	speed = 6.2

	if dodge > 0
	{
		sprite_index=spr_walk;
		move_contact_solid(direction,8)
		dodge -= 1.4
		//alarm[1] += 1;
	}

	//hes firing at me!
	if point_distance(x,y,mouse_x,mouse_y)<60 && aggression <= 180 && alarm[2] < 1 {
		if mouse_check_button_pressed(mb_left) and target > 0
		{
			if point_distance(x,y,target.x,target.y) < 64
			direction = point_direction(x,y,target.x,target.y)
			else
			direction = point_direction(target.x+lengthdir_x(point_distance(x,y,target.x,target.y)*0.95,point_direction(x,y,mouse_x,mouse_y)),target.y+lengthdir_y(point_distance(x,y,target.x,target.y)*0.95,point_direction(x,y,mouse_x,mouse_y)),x,y)+random(60)-30
			dodge = 3;
			walk = 4;
			sprite_index = spr_walk;
			gunangle = direction
		}
	}


	if target > 0 && alarm[0] > 0//we just smacked dat
	{
		motion_add(point_direction(x,y,target.x,target.y)+180+random(40)-20,3)
		walk = alarm[0]
	}


	//Dodge bullet or hit it back
	if instance_exists(projectile) && instance_exists(Player) && aggression < 300
	{
	    dodgethis = instance_nearest(x,y,projectile);
	    with instance_nearest(x,y,projectile)
	    {
			if team=2
			other.dodgethis=id;
	    }
    
	    if point_distance(x,y,dodgethis.x,dodgethis.y) < 64 && dodgethis.team=2
	    {
		    var forwardprojectilex = lengthdir_x(dodgethis.speed,dodgethis.direction);
		    var forwardprojectiley = lengthdir_y(dodgethis.speed,dodgethis.direction);
    
		    //direction = point_direction(target.x+lengthdir_x(point_distance(x,y,target.x,target.y)*0.95,point_direction(x,y,forwardprojectilex,forwardprojectiley)),target.y+lengthdir_y(point_distance(x,y,target.x,target.y)*0.95,point_direction(x,y,forwardprojectilex,forwardprojectiley)),x,y)+random(60)-30
		    var projectiledir = point_direction(x,y,dodgethis.x,dodgethis.y);
    
		    if point_distance(Player.x, Player.y, x, y) > 80 && random(2) < 1 && alarm[5] < 1 && (alarm[0]<1 || alarm[6] > 20) && alarm[2]<1 && projectiledir < gunangle+100 && projectiledir > gunangle-100 && dodgethis.typ!=0
		    {//SMACK THAT PROJETILE BACK
				//if (alarm[6] > 30) {
					//var bro = instance_create(x,y,PopupText);
					//bro.mytext = "BRO UR BUSTIN#MY BALLS HERE"
				//}
				
		        with instance_create(x+lengthdir_x(2,projectiledir),y+lengthdir_y(2,projectiledir),AssassinSlash)
		        {
			        dmg=5;
			        image_angle = other.gunangle
			        motion_add(other.gunangle+random(10)-5,2.5)
			        team = other.team
		        }
		        alarm[0] = 12
        
		        snd_play(sndAssassinAttack)
		        wepangle = -wepangle
		        motion_add(projectiledir,6)
		    }
		    else if alarm[2] < 1 && aggression < 300
		    {//dodge it
			    direction=point_direction(x,y,forwardprojectilex,forwardprojectiley)+180+random(30)-15;
			    dodge = 4;
			    alarm[0] += 1
				alarm[6] += 2
		    }
	    }
	} else if target > 0 && point_distance(x, y, target.x, target.y) > 200 {
		do
		{
			with instance_nearest(target.x + (random(2) - 1) * (random(32)+80),target.y + (random(2) - 1) * (random(32)+80),Floor)
			{
				with other {
					if place_meeting(other.x + 16, other.y + 16, Wall) {
						continue;
					}
				}
				var assx = other.x;
				var assy = other.y;
				
				if point_distance(x + 16, y + 16,other.target.x,other.target.y) > 64
				continue;
				
				other.x = x+16;
				other.y = y+16;
				other.alarm[5] = 15;
				with instance_create(assx,assy,AssassinTeleport) {
					self.assx = other.x+16;
					self.assy = other.y+16;
					c1 = make_color_rgb(56,0,106);
					c2 = make_color_rgb(145,148,255);
				}
				repeat(5){
					with instance_create(other.x,other.y,Smoke)
					motion_add(random(360),1+random(3))
				}
			}
		}
		until (point_distance(x,y,target.x,target.y) > 64)
	}
} else if sprite_index != spr_hurt {
	sprite_index = spr_stunned;
}
if target > 0
{
	if target.x < x
		right = -1;
	else
		right = 1;
}
if alarm[2] > 0 && alarm[2] < 20
{
	speed *= 0;
	walk = 0;
	if (target > 0)
	{
		var dir = point_direction(x,y,target.x,target.y);
		motion_add(dir,1);
	}
}