
if wallsdestroyed<1{

    if speed != 0
    {
    snd_play(sndBoltHitWall,0.1,true,true,1,false,true,0.76)
    speed = 0
    move_contact_solid(direction,16)
    instance_create(x,y,Dust)
    
    }
}
else{
	with other
	{
		instance_destroy();
		instance_create(x,y,FloorExplo);
	}
	wallsdestroyed-=1;
}

