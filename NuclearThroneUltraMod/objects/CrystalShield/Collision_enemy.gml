/// @description Gamme guts yo
if instance_exists(Player)
var enem = other;
if enem.team != team && team != 0
with Player
{
	if skill_got[8] = 1//Dealing the damage with gamma guts
	{
	snd_play(sndGammaGutsProc);
		with enem
	    {
			/* Normal amount is actually insane
	    if Player.race=25
	    my_health -= 8//dmg dealt by gamma guts
	    else
	    my_health -= 7//dmg dealt by gamma guts*/
		if Player.race=25//Oke so this should not be possible doctor cant  have shield but if you doo...
			my_health -= 99//dmg dealt by gamma guts
	    else
		 my_health -= 2//dmg dealt by gamma guts
	    sprite_index = spr_hurt
	    image_index = 0
		if meleedamage == 0
			motion_add(point_direction(other.x,other.y,x,y),6)
    
	        if Player.race==13 && Player.ultra_got[50]==0{//Sheep passive
	        if other.team=Player.team{
	        if Player.justAsheep
	        {Player.justAsheep=false;
	        instance_create(x,y-16,Notice);
	        }}}
	    }
	    if (enem.my_health<=0)//gamma guts kill?
	    {
	    snd_play(sndGammaGutsKill);
			with instance_create(x,y,GammaGutsBlast)
			{
				image_xscale = 1.5;
				image_yscale = 1.5;
			}

	    }
	}
}