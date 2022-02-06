alarm[1] = 4+random(15)

if instance_exists(Player)
{
if Player.loops>1
alarm[1]=4+random(6)

}

drama=true;
if sprite_index != spr_hurt
sprite_index = spr_idle
scrTarget()
mask_index=mskChesireCat;
if target > 0
{
if point_distance(x,y,target.x,target.y)<240
{
if !place_meeting(x,y,Wall)&&place_meeting(x,y,Floor)
{
    if collision_line(x,y,target.x,target.y,Wall,0,0) < 0//ON LAND
    {
    if random(6) < 1//laser
    {
    //instance_create(x,y,ExplosionNonLethal);
    //direction = point_direction(x,y,target.x,target.y)+180
    
    ammo = 7
    alarm[3] = 15
    snd_play(sndLaserCrystalCharge)
    gunangle = point_direction(x,y,target.x,target.y)
    sprite_index = spr_fire
    alarm[1] = 20+random(15)
    
    if random(4)<1
    scrDrop(100,0);
    //mask_index=mskChesireCat;
    
    /*speed*=0.4;
    image_index = 0
    sprite_index = spr_fire
    alarm[2]=5+random(30);
    walk = alarm[2]+20;
    alarm[1] = alarm[2]+20;*/
    }
    else if random(6)<1//spin
    {
    ammo=5;
    alarm[4] = 16
    snd_play(sndBigBanditMeleeHit)
    gunangle = point_direction(x,y,target.x,target.y)
    sprite_index = spr_fire
    alarm[1] = 60+random(30)
    
    if random(7)<1
    scrDrop(90,0);
    }
    else if random(3)<1//quick burp
    {
    snd_play(sndBigBanditMeleeHit);
    snd_play(sndMinigun);
    gunangle = point_direction(x,y,target.x,target.y)
    sprite_index = spr_fire
    walk = 4+random(4)
    alarm[1] = walk+2
    var pa = 12;
	var atkAngle = 60;
	var angleStep = atkAngle / pa;
	var spd = 0.75;
	var speedIncrement = 0.65;
	var leftRight = 1;
    repeat(pa)
	{
	    with instance_create(xprevious,yprevious,EnemyBullet1)
		{
			motion_add(other.gunangle+(atkAngle*leftRight),spd)
			image_angle = direction
			team = other.team
		}
		atkAngle -= angleStep;
		spd += speedIncrement;
		leftRight*=-1;
	}
	//GOOI DR NOG MAAR EENTJE NA
	with instance_create(xprevious,yprevious,EnemyBullet1)
	{
		motion_add(other.gunangle,8)
		image_angle = direction
		team = other.team
	}
    }
    else if random(4)<1//Missiles!
    {
    //snd_play(sndDragonStart)
    gunangle = point_direction(x,y,target.x,target.y)
    sprite_index = spr_fire
    alarm[1] = 5+random(5)
    
    snd_play(sndNukeFire)

    with instance_create(x+8+random(8),y,TeaPotNuke)
    motion_add(other.gunangle,4)

    }
    else if random(3)<1//Minions senpai
    {
     if random(2)<1
    scrDrop(80,0);
    //snd_play(sndDragonStart)
    repeat(10)
    {
    with instance_create(x,y,Smoke)
    {motion_add(random(360),1+random(4))
    image_speed=0.3+random(0.2);}
    }
    walk=10;
    alarm[1] = walk+random(6)
    with instance_create(x,y,choose(InvertedCardGuy,InvertedCardGuy2,InvertedCardGuy,InvertedCardGuy2,InvertedCardGuy,InvertedCardGuy2,InvertedTeaPot))
    {
    alarm[1]=5+random(10);//significantly reduced waiting time before attacking
    }
    }
    else if random(3)<1{
    
    if random(2)<1
    scrDrop(80,0);
    
    walk=14+random(12);
    alarm[1]=walk;
    direction = point_direction(x,y,target.x,target.y)+random(30)-15
    }
    else if random(4)<2{
    direction=random(360);
    walk=12+random(10);
    alarm[1]=walk;
    }
    else if random(8)<1{
    direction=point_direction(x,y,target.x,target.y)+180+random(60)-30;
    walk=12+random(10);
    alarm[1]=walk;
    }
    else{
    speed=0;
    walk=10+random(30);
    alarm[1]=walk+10+random(20);
    }
    }//wall in between\/
    else if random(20)<1//Missiles!
    {
    if random(5)<1
    scrDrop(90,0);
    //snd_play(sndDragonStart)
    gunangle = point_direction(x,y,target.x,target.y)
    sprite_index = spr_fire
    alarm[1] = 10+random(10)
    
    snd_play(sndNukeFire)

    with instance_create(x+8+random(8),y,TeaPotNuke)
    motion_add(other.gunangle,4)

    }
    else if random(8)<1{
    walk=10+random(10);
    alarm[1]=walk;
    direction = point_direction(x,y,target.x,target.y)+random(20)-10}
    else if random(6)<1{
    walk=12+random(16);
    alarm[1]=walk;
    direction = random(360)}
    else
    {
    //mask_index=mskPickupThroughWall;
    walk=6+random(6);
    alarm[1]=walk+random(12);
    direction = point_direction(x,y,target.x,target.y)+random(20)-10
    }
    
    }
    else
    {
    if random(14)>3 && point_distance(x,y,target.x,target.y)>32//NOT ON LAND
    {
    
    motion_add(point_direction(x,y,target.x,target.y)+30-random(15),4);
    //move_contact_solid(direction,3)
    alarm[1]=4+random(10);
    walk=alarm[1]+random(10);
    }
    else if random(12)<7//NOT ON LAND
    {
    walk=14+random(16);
    alarm[1]=walk;
    motion_add(point_direction(x,y,target.x,target.y)+random(90)-45,4)
    move_contact_solid(direction,3)
    }
    else if random(14)<1
    {
    speed*=0.5;
    alarm[1]=2+random(4);
    }
    else
    {
    walk=6+random(12);
    alarm[1]=walk+2+random(6);
    direction = point_direction(x,y,target.x,target.y)+random(180)-90
    
    }
    }
}
else//Far from player
{
walk=16+random(12);
    alarm[1]=walk+10;
    motion_add(point_direction(x,y,target.x,target.y),4);
}
}//no target\/
else if random(10)<2{
motion_add(random(360),0.5)
walk=30+random(10)
alarm[1]=walk;}

if random(40)<1
    scrDrop(90,1);

/* */
/*  */
