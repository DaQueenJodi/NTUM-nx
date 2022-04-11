if instance_exists(Player)
{
    if Player.my_health<Player.maxhealth*0.5&&spr_idle != sprBigFishSkull || loops > 0
    {
	    with Player
	    oasisskip=-1;
    
	    //with BanditBoss
	    //oasis=false;
    
	    with WantBoss
	    instance_destroy();
    
	    if !instance_exists(BanditBoss)
	    {spr_idle = sprBigFishSkull
	    spr_hurt = sprBigFishSkullHurt}
    }
}
    if ( (instance_number(enemy) < BackCont.enemiesInStartLevel * 0.6) ||
	(instance_number(enemy) < BackCont.enemiesInStartLevel * 0.35 && loops > 0))
    {
    
    with Player
    oasisskip=-1;
    
    //with BanditBoss
    //oasis=false;
    
    with WantBoss
    instance_destroy();
    
    if !instance_exists(BanditBoss)
    {spr_idle = sprBigFishSkull
    spr_hurt = sprBigFishSkullHurt}
    
    }
    
    if random(100)<1&&spr_idle=sprBigFishSkullOpen
    {
    
    repeat(irandom(12))
    {
        with instance_create(x,y,Dust)
        {
        sprite_index=sprBubble;
        motion_add(random(40)-20+90,1+random(3) );
        }
    }
    
    }

