if image_index < 1
image_index += random(0.04)
else
image_index += 0.4

if !place_meeting(x,y,Wall)
image_angle += rotspeed*speed

//if curse = 1 and random(6) < 1
//instance_create(x+random(8)-4,y+random(8)-4,Curse)
if instance_exists(Player)
{
	if returnFX && speed < 3 && alarm[0] < 4
	{
		returnFX = false;
		if instance_exists(Player) && !dontteleport
		{
			snd_play_2d(sndWepReturn,0.1);
			with instance_create(x,y,ThrowWepReturnFX)
			{
				owner = Player.id;
				depth = other.depth - 1;
			}
		}	
	}
    if speed<stopSpeed && alarm[0]<1
    {
        instance_destroy()
        /*
        if Player.skill_got[5]=0
        {
        theWepPickup = instance_create(x,y,WepPickup)
            with theWepPickup
            {
            image_angle=other.image_angle;
            scrWeapons()
            wep=other.wep
            name = wep_name[wep]
            ammo = 0
            type = wep_type[wep]
            curse = other.curse
            wepmod1=other.wepmod1;
            wepmod2=other.wepmod2;
            wepmod3=other.wepmod3;
            wepmod4=other.wepmod4;
            sprite_index = wep_sprt[wep]
            }
        }*/
    }
}

/* */
/*  */
