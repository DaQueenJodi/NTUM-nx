function scrModHit() {
	//RUN THIS CODE INSIDE OF ENEMY OBJET IN THE PROJETILE COLLISION EVENT
	/*WEAPON MODS
	mod1[]
	mod2[]
	mod3[]
	0 nothing
	1 toxic
	2 explosive
	3 flame
	4 frost
	5 blood
	6 lightning
	7 kraken
	8 swarm
	9 bouncer
	10 shotgun
	11 projectile speed
	12 reload speed
	13 homing
	14 radiation
	15 splinter
	16 morph
	*/
	//if other.type=0//MELEE WEAPONS spawn on top of enemy
	//{





	//}
	with Player
	{
	    if moddelay<1
	    {
    
		    if skill_got[30]//power craving
				moddelay=13;
		    else
				moddelay=27;
			if ultra_got[65] == 1//Weapon smith Ultra A
				moddelay -= 6;
    
	    }
	}

	with other{//PROJECTILE

	var newfrost
	newfrost=true;

	//MOD 1
	switch (Mod1){//if you see this pls report to me what weapon you just fired!

	case 1:// GAS EM!

	snd_play(sndToxicBoltGas);
	with instance_create(other.x,other.y,ToxicThrowerGas)
	motion_add(random(360),random(2))
	break;

	case 2://EXPLODE! WAY TO OP!


	snd_play(sndExplosion);
	with instance_create(other.x+lengthdir_x(8,random(360)),other.y+lengthdir_x(8,random(360)),SmallExplosion)//SMALL EXPLOSIONS CAUSE THIS IS OP AS FUCK
	dmg=2;
	break;

	case 3://burn!

	snd_play(sndFlare);
	with instance_create(other.x,other.y,Flame){
	image_speed = 0.6;//0.6 for regular flame from flame shotguns
	motion_add(random(360),random(2))
	team=other.team;}
	break;

	case 4:

	//freeze bitch!
	    with other{//enemy
	    if alarm[11]<1&&my_health>0{//this probably doesnt work cause iit takes the health off after this collision detection
	    frozen=true;
	        with instance_create(x,y,FrozenEnemy)
	        {
	        //image_speed=0;
	        image_xscale=other.size*choose(1,-1);
	        image_yscale=other.size;
	        xx=other.x
	        yy=other.y
	        debrisAmount=3;
	        }
	    alarm[11]+=10;//30 for freezebullets
		if alarm[1] > 0
			alarm[1] += 10;
	    }}
	newfrost=false;
	break;


	case 5://Don't think too much about blood explosions

	snd_play(sndMeatExplo);
	with instance_create(other.x+lengthdir_x(4,random(360)),other.y+lengthdir_x(4,random(360)),MeatExplosion)
	dmg=1;
	break;

	case 6://ELECTROCUTION!
	snd_play(choose(sndSpark1,sndSpark2));

	with instance_create(other.x,other.y,Lightning)
	{image_angle = random(360);
	image_speed += 0.2
	team = other.team
	ammo = 4
	event_perform(ev_alarm,0)
	visible = 0
	with instance_create(x,y,LightningSpawn)
	image_angle = other.image_angle}
	break;

	case 7://TENTACLES!?
	snd_play(sndRoll);
	if !sound_isplaying(sndWater1) && !sound_isplaying(sndWater2)&&random(3)<1
	snd_play(choose(sndWater1,sndWater2) );
	//snd_play(sndBloodLauncher);

	with other{
	with instance_create(x,y,Tentacle)
	{image_angle = point_direction(x,y,instance_nearest(x,y,enemy).x,instance_nearest(x,y,enemy).y)+random(20)-10;//Instance nearest not me?
	creator=other.id;
	team = 2//Player.team
	ammo = 5
	dmg=1;
	event_perform(ev_alarm,0)
	visible = 0
	with instance_create(x,y,LightningSpawn)
	{
	sprite_index=sprTentacleSpawn
	image_angle = other.image_angle
	}

	repeat(4){
	    with instance_create(x,y,FishBoost)
	    {
	    motion_add( random(360),2+random(4) );
	    }}

	}}
	break;

	case 8://swarm
	with instance_create(other.x+lengthdir_x(4,random(360)),other.y+lengthdir_x(4,random(360)),SwarmBolt)
	{team=other.team;
	direction=random(360);
	hits=3;}
	break;

	case 9://bouncer
	with instance_create(other.x+lengthdir_x(4,random(360)),other.y+lengthdir_x(4,random(360)),Bullet3)
	{motion_add(random(360),5.1)
	image_angle = direction
	team = 2
	dmg=3;
	mask_index=mskPickupThroughWall;
	alarm[0]=6;}

	if !sound_isplaying(sndBouncerHitWall){
	audio_sound_pitch(sndBouncerHitWall,random_range(0.6,1.4))
	audio_play_sound(sndBouncerHitWall,100,0)}

	break;

	case 10://shotgun

	snd_play(sndShotgun);
	repeat(4)
	{
	with instance_create(other.x,other.y,Bullet2)
	{motion_add(random(360),7+random(6))//12+6
	image_angle = direction
	team = 2
	mask_index=mskPickupThroughWall;
	alarm[0]=4;}
	}

	break;

	case 14://Radiation


	if !audio_is_playing(sndHorrorBeam)
	{
	audio_sound_pitch(sndHorrorBeam,random_range(0.7,1.6))
	audio_play_sound(sndHorrorBeam,50,0)
	}

	other.raddrop+=5;

	break;

	case 15://SPLINTER

	snd_play(sndSplinterGun)

	repeat(2)
	{
	with instance_create(x,y,Splinter)//5 splinters
	{motion_add(random(360),20+random(4))
	image_angle = direction
	team = other.team}
	}

	break;

	case 16://MORPH
	debug("MORPHING");
	with instance_create(x,y,Morph)
		scrCanHumphry();

	break;
	
	case 17://DROPS
		debug("drops");
		scrDrop(9,0);

	break;
	
	case 18://GUNS
		debug("gans");
		scrDrop(0,6);

	break;

	}



	//MOD 2
	switch (Mod2){//if you see this pls report to me what weapon you just fired!

	case 1:// GAS EM!

	if !audio_is_playing(sndToxicBoltGas)
	snd_play(sndToxicBoltGas);
	with instance_create(other.x,other.y,ToxicThrowerGas)
	motion_add(random(360),random(2))
	break;

	case 2://EXPLODE! WAY TO OP!

	if !audio_is_playing(sndExplosion)
	snd_play(sndExplosion);
	with instance_create(other.x+lengthdir_x(8,random(360)),other.y+lengthdir_x(12,random(360)),SmallExplosion)//SMALL EXPLOSIONS CAUSE THIS IS OP AS FUCK
	dmg=2;
	break;

	case 3://burn!

	if !audio_is_playing(sndFlare)
	snd_play(sndFlare);
	with instance_create(other.x,other.y,Flame){
	image_speed = 0.6;//0.6 for regular flame from flame shotguns
	motion_add(random(360),random(2))
	team=other.team;
	}
	break;

	case 4:

	//freeze bitch!
	if newfrost{
	    with other{//enemy
	    if alarm[11]<1&&my_health>0{//this probably doesnt work cause iit takes the health off after this collision detection
	    frozen=true;
    
	        with instance_create(x,y,FrozenEnemy)
	        {
	        //image_speed=0;
	        image_xscale=other.size*choose(1,-1);
	        image_yscale=other.size;
	        xx=other.x
	        yy=other.y
	        debrisAmount=3;
	        }
    
	    alarm[11]+=10;//30 for freezebullets
		if alarm[1] > 0
			alarm[1] += 10;
	    }}
	    newfrost=false;
	}
	else
	{
	with FrozenEnemy
	debrisAmount+=3;
	with other
	{
		alarm[11]+=10;
		if alarm[1] > 0
				alarm[1] += 10;
	}
	}
	break;


	case 5://Don't think too much about blood explosions

	if !audio_is_playing(sndMeatExplo)
	snd_play(sndMeatExplo);
	with instance_create(other.x+lengthdir_x(4,random(360)),other.y+lengthdir_x(4,random(360)),MeatExplosion)
	dmg=1;
	break;

	case 6://ELECTROCUTION!
	if (!audio_is_playing(sndSpark1)&&!audio_is_playing(sndSpark2))
	snd_play(choose(sndSpark1,sndSpark2));

	with instance_create(other.x,other.y,Lightning)
	{image_angle = random(360);
	image_speed += 0.2
	team = other.team
	ammo = 4
	event_perform(ev_alarm,0)
	visible = 0
	with instance_create(x,y,LightningSpawn)
	image_angle = other.image_angle}
	break;

	case 7://TENTACLES!?
	if !audio_is_playing(sndRoll)
	snd_play(sndRoll);
	if !sound_isplaying(sndWater1) && !sound_isplaying(sndWater2)&&random(3)<1
	snd_play(choose(sndWater1,sndWater2) );

	with other{
	with instance_create(x,y,Tentacle)
	{image_angle = point_direction(x,y,instance_nearest(x,y,enemy).x,instance_nearest(x,y,enemy).y)+random(20)-10;//Instance nearest not me?
	creator=other.id;
	team = 2//Player.team
	ammo = 5
	dmg=1;
	event_perform(ev_alarm,0)
	visible = 0
	with instance_create(x,y,LightningSpawn)
	{
	sprite_index=sprTentacleSpawn
	image_angle = other.image_angle
	}

	repeat(4){
	    with instance_create(x,y,FishBoost)
	    {
	    motion_add( random(360),2+random(4) );
	    }}

	}}

	break;

	case 8:
	with instance_create(other.x+lengthdir_x(4,random(360)),other.y+lengthdir_x(4,random(360)),SwarmBolt)
	{team=other.team;
	direction=random(360);
	hits=3;}
	break;

	case 9://bouncer
	with instance_create(other.x+lengthdir_x(4,random(360)),other.y+lengthdir_x(4,random(360)),Bullet3)
	{motion_add(random(360),5.1)
	image_angle = direction
	team = 2
	dmg=3;
	mask_index=mskPickupThroughWall;
	alarm[0]=6;}

	if !sound_isplaying(sndBouncerHitWall){
	audio_sound_pitch(sndBouncerHitWall,random_range(0.6,1.4))
	audio_play_sound(sndBouncerHitWall,100,0)}

	break;

	case 10://shotgun

	snd_play(sndShotgun);
	repeat(4)
	{
	with instance_create(other.x,other.y,Bullet2)
	{motion_add(random(360),7+random(6))//12+6
	image_angle = direction
	team = 2
	mask_index=mskPickupThroughWall;
	alarm[0]=4;}
	}

	break;


	case 14://Radiation


	if !audio_is_playing(sndHorrorBeam)
	{
	audio_sound_pitch(sndHorrorBeam,random_range(0.7,1.6))
	audio_play_sound(sndHorrorBeam,50,0)
	}

	other.raddrop+=5;

	break;

	case 15://SPLINTER

	snd_play(sndSplinterGun)

	repeat(2)
	{
	with instance_create(x,y,Splinter)//5 splinters
	{motion_add(random(360),20+random(4))
	image_angle = direction
	team = other.team}
	}

	break;


	case 16://MORPH
	debug("MORPHING");
	with instance_create(x,y,Morph)
		scrCanHumphry();

	break;
	
	case 17://DROPS
		
		scrDrop(9,0);

	break;
	
	case 18://GUNS
		
		scrDrop(0,6);

	break;

	}







	//MOD 3
	switch (Mod3){//if you see this pls report to me what weapon you just fired!

	case 1:// GAS EM!

	if !audio_is_playing(sndToxicBoltGas)
	snd_play(sndToxicBoltGas);
	with instance_create(other.x,other.y,ToxicThrowerGas)
	motion_add(random(360),random(2))
	break;
	case 2://EXPLODE! WAY TO OP!

	if !audio_is_playing(sndExplosion)
	snd_play(sndExplosion);
	with instance_create(other.x+lengthdir_x(12,random(360)),other.y+lengthdir_x(8,random(360)),SmallExplosion)//SMALL EXPLOSIONS CAUSE THIS IS OP AS FUCK
	dmg=2;
	break;
	case 3://burn!
	if !audio_is_playing(sndFlare)
	snd_play(sndFlare);

	with instance_create(other.x,other.y,Flame){
	image_speed = 0.6;//0.6 for regular flame from flame shotguns
	motion_add(random(360),random(2))
	team=other.team;
	}
	break;

	case 4:

	//freeze bitch!
	if newfrost{
	    with other{//enemy
	    if alarm[11]<1&&my_health>0{//this probably doesnt work cause iit takes the health off after this collision detection
	    frozen=true;
    
	        with instance_create(x,y,FrozenEnemy)
	        {
	        //image_speed=0;
	        image_xscale=other.size*choose(1,-1);
	        image_yscale=other.size;
	        xx=other.x
	        yy=other.y
	        debrisAmount=3;
	        }
    
	    alarm[11]+=10;//30 for freezebullets
		if alarm[1] > 0
			alarm[1] += 10;
	    }}
	    newfrost=false;
	}
	else
	{
	with FrozenEnemy
	debrisAmount+=3;
	with other
	{
		alarm[11]+=10;
		if alarm[1] > 0
				alarm[1] += 10;
	}
	}
	break;


	case 5://Don't think too much about blood explosions

	if !audio_is_playing(sndMeatExplo)
	snd_play(sndMeatExplo);
	with instance_create(other.x+lengthdir_x(4,random(360)),other.y+lengthdir_x(4,random(360)),MeatExplosion)
	dmg=1;
	break;

	case 6://ELECTROCUTION!
	if (!audio_is_playing(sndSpark1)&&!audio_is_playing(sndSpark2))
	snd_play(choose(sndSpark1,sndSpark2));

	with instance_create(other.x,other.y,Lightning)
	{image_angle = random(360);
	image_speed += 0.2
	team = other.team
	ammo = 4
	event_perform(ev_alarm,0)
	visible = 0
	with instance_create(x,y,LightningSpawn)
	image_angle = other.image_angle}
	break;

	case 7://TENTACLES!?
	if !audio_is_playing(sndRoll)
	snd_play(sndRoll);
	if !sound_isplaying(sndWater1) && !sound_isplaying(sndWater2)&&random(3)<1
	snd_play(choose(sndWater1,sndWater2) );
	with other{
	with instance_create(x,y,Tentacle)
	{image_angle = point_direction(x,y,instance_nearest(x,y,enemy).x,instance_nearest(x,y,enemy).y)+random(20)-10;//Instance nearest not me?
	creator=other.id;
	team = 2//Player.team
	ammo = 5
	dmg=1;
	event_perform(ev_alarm,0)
	visible = 0
	with instance_create(x,y,LightningSpawn)
	{
	sprite_index=sprTentacleSpawn
	image_angle = other.image_angle
	}

	repeat(4){
	    with instance_create(x,y,FishBoost)
	    {
	    motion_add( random(360),2+random(4) );
	    }}

	}}

	break;

	case 8:
	with instance_create(other.x+lengthdir_x(4,random(360)),other.y+lengthdir_x(4,random(360)),SwarmBolt)
	{team=other.team;
	hits=3;
	direction=random(360);}
	break;

	case 9://bouncer
	with instance_create(other.x+lengthdir_x(4,random(360)),other.y+lengthdir_x(4,random(360)),Bullet3)
	{motion_add(random(360),5.1)
	image_angle = direction
	team = 2
	dmg=3;
	mask_index=mskPickupThroughWall;
	alarm[0]=6;}

	if !sound_isplaying(sndBouncerHitWall){
	audio_sound_pitch(sndBouncerHitWall,random_range(0.6,1.4))
	audio_play_sound(sndBouncerHitWall,100,0)}

	break;


	case 10://shotgun

	snd_play(sndShotgun);
	repeat(4)
	{
	with instance_create(other.x,other.y,Bullet2)
	{motion_add(random(360),7+random(6))//12+6
	image_angle = direction
	team = 2
	mask_index=mskPickupThroughWall;
	alarm[0]=4;}
	}

	break;


	case 14://Radiation


	if !audio_is_playing(sndHorrorBeam)
	{
	audio_sound_pitch(sndHorrorBeam,random_range(0.7,1.6))
	audio_play_sound(sndHorrorBeam,50,0)
	}

	other.raddrop+=5;

	break;

	case 15://SPLINTER

	snd_play(sndSplinterGun)

	repeat(2)
	{
	with instance_create(x,y,Splinter)//5 splinters
	{motion_add(random(360),20+random(4))
	image_angle = direction
	team = other.team}
	}

	break;


	case 16://MORPH
	debug("MORPHING");
	with instance_create(x,y,Morph)
		scrCanHumphry();

	break;
	
	case 17://DROPS
		
		scrDrop(9,0);

	break;
	
	case 18://GUNS
		
		scrDrop(0,6);

	break;

	}








	//MOD 4
	switch (Mod4){//if you see this pls report to me what weapon you just fired!

	case 1:// GAS EM!

	if !audio_is_playing(sndToxicBoltGas)
	snd_play(sndToxicBoltGas);
	with instance_create(other.x,other.y,ToxicThrowerGas)
	motion_add(random(360),random(2))
	break;
	case 2://EXPLODE! WAY TO OP!

	if !audio_is_playing(sndExplosion)
	snd_play(sndExplosion);
	with instance_create(other.x+lengthdir_x(12,random(360)),other.y+lengthdir_x(8,random(360)),SmallExplosion)//SMALL EXPLOSIONS CAUSE THIS IS OP AS FUCK
	dmg=2;
	break;
	case 3://burn!
	if !audio_is_playing(sndFlare)
	snd_play(sndFlare);

	with instance_create(other.x,other.y,Flame){
	image_speed = 0.6;//0.6 for regular flame from flame shotguns
	motion_add(random(360),random(2))
	team=other.team;
	}
	break;

	case 4:

	//freeze bitch!
	if newfrost{
	    with other{//enemy
	    if alarm[11]<1&&my_health>0{//this probably doesnt work cause iit takes the health off after this collision detection
	    frozen=true;
    
	        with instance_create(x,y,FrozenEnemy)
	        {
	        //image_speed=0;
	        image_xscale=other.size*choose(1,-1);
	        image_yscale=other.size;
	        xx=other.x
	        yy=other.y
	        debrisAmount=3;
	        }
    
	    alarm[11]+=10;//30 for freezebullets
		if alarm[1] > 0
			alarm[1] += 10;
	    }}
	    newfrost=false;
	}
	else
	{
	with FrozenEnemy
	debrisAmount+=3;
	with other
	{
		alarm[11]+=10;
		if alarm[1] > 0
				alarm[1] += 10;
	}
	}
	break;


	case 5://Don't think too much about blood explosions

	if !audio_is_playing(sndMeatExplo)
	snd_play(sndMeatExplo);
	with instance_create(other.x+lengthdir_x(4,random(360)),other.y+lengthdir_x(4,random(360)),MeatExplosion)
	dmg=1;
	break;

	case 6://ELECTROCUTION!
	if (!audio_is_playing(sndSpark1)&&!audio_is_playing(sndSpark2))
	snd_play(choose(sndSpark1,sndSpark2));

	with instance_create(other.x,other.y,Lightning)
	{image_angle = random(360);
	image_speed += 0.2
	team = other.team
	ammo = 4
	event_perform(ev_alarm,0)
	visible = 0
	with instance_create(x,y,LightningSpawn)
	image_angle = other.image_angle}
	break;

	case 7://TENTACLES!?
	if !audio_is_playing(sndRoll)
	snd_play(sndRoll);
	if !sound_isplaying(sndWater1) && !sound_isplaying(sndWater2)&&random(3)<1
	snd_play(choose(sndWater1,sndWater2) );
	with other{
	with instance_create(x,y,Tentacle)
	{image_angle = point_direction(x,y,instance_nearest(x,y,enemy).x,instance_nearest(x,y,enemy).y)+random(20)-10;//Instance nearest not me?
	creator=other.id;
	team = 2//Player.team
	ammo = 5
	dmg=1;
	event_perform(ev_alarm,0)
	visible = 0
	with instance_create(x,y,LightningSpawn)
	{
	sprite_index=sprTentacleSpawn
	image_angle = other.image_angle
	}

	repeat(4){
	    with instance_create(x,y,FishBoost)
	    {
	    motion_add( random(360),2+random(4) );
	    }}

	}}

	break;

	case 8:
	with instance_create(other.x+lengthdir_x(4,random(360)),other.y+lengthdir_x(4,random(360)),SwarmBolt)
	{team=other.team;
	hits=3;
	direction=random(360);}
	break;

	case 9://bouncer
	with instance_create(other.x+lengthdir_x(4,random(360)),other.y+lengthdir_x(4,random(360)),Bullet3)
	{motion_add(random(360),5.1)
	image_angle = direction
	team = 2
	dmg=3;
	mask_index=mskPickupThroughWall;
	alarm[0]=6;}

	if !sound_isplaying(sndBouncerHitWall){
	audio_sound_pitch(sndBouncerHitWall,random_range(0.6,1.4))
	audio_play_sound(sndBouncerHitWall,100,0)}

	break;


	case 10://shotgun

	snd_play(sndShotgun);
	repeat(4)
	{
	with instance_create(other.x,other.y,Bullet2)
	{motion_add(random(360),7+random(6))//12+6
	image_angle = direction
	team = 2
	mask_index=mskPickupThroughWall;
	alarm[0]=4;}
	}

	break;


	case 14://Radiation


	if !audio_is_playing(sndHorrorBeam)
	{
	audio_sound_pitch(sndHorrorBeam,random_range(0.7,1.6))
	audio_play_sound(sndHorrorBeam,50,0)
	}

	other.raddrop+=5;

	break;

	case 15://SPLINTER

	snd_play(sndSplinterGun)

	repeat(2)
	{
	with instance_create(x,y,Splinter)//5 splinters
	{motion_add(random(360),20+random(4))
	image_angle = direction
	team = other.team}
	}

	break;


	case 16://MORPH
	debug("MORPHING");
	with instance_create(x,y,Morph)
		scrCanHumphry();

	break;
	
	case 17://DROPS
		
		scrDrop(9,0);

	break;
	
	case 18://GUNS
		
		scrDrop(0,6);

	break;

	}







	with projectile{
	Mod1=0;
	Mod2=0;
	Mod3=0;
	Mod4=0;}




	Mod1=0;
	Mod2=0;
	Mod3=0;
	Mod4=0;

	}



}
