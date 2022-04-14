if(instance_exists(Player)){
if ( (Player.skill_got[5] = 1) && (Player.race=11) && (other.team=2) && (Player.damageboostdelay < 1))//HUNTER THRONEBUTT
{
    //if instance_exists(Marker)
    //{
    //if (instance_exists(Marker.target))&&sprite_index!=spr_hurt
        with Marker
        {
        if instance_exists(enemy)&&instance_exists(target)
        {
        if other.id=target.id
        {
        other.my_health-=5
        Player.damageboostdelay=15;
        }
        }
        
        }
        
    //}
}

if ( (Player.ultra_got[71] == 1) && (other.team==2)) //ANGEL Ultra tranquility
{
    
    if Player.my_health=Player.maxhealth && Player.tranquilitydelay<1
    {
    
    repeat(3+irandom(2) )
    {with instance_create(x+random(16)-8,y+random(16)-8,Feather)
    motion_add(random(360),5+random(10) );}
    
    my_health-=8;
    
    Player.tranquilitydelay=18;
    }
    
       
    
}

//HUNTERS A ULTRA
if ( (Player.race==11)&&(Player.ultra_got[41]==1)   )
{

    if other.team=2 && other.alarm[8]<1// && sprite_index!=spr_hurt
    {   
        if point_distance(x,y,Player.x,Player.y)!=0//prevent divide by 0 error this is cheap just multiply but fk it
        {
            if(point_distance(x,y,Player.x,Player.y)<100)
            {
            my_health-=point_distance(x,y,Player.x,Player.y)/82;//82;
            }
            else
            {
            my_health-=point_distance(x,y,Player.x,Player.y)/29//28;
            }
            other.alarm[8]=10;//this is the delay before we can deal extra damage again to this enemy
        }
    }

}
    if Player.race==13 && Player.ultra_got[50]==0{//Sheep passive
    if other.team=Player.team{
    if Player.justAsheep
    {Player.justAsheep=false;
    instance_create(x,y-16,Notice);
    }}}
    
    
    //WEAPON MODS!
if other.team = Player.team || other.object_index=Disc || other.object_index=ToxicGas || other.object_index=ToxicThrowerGas
{
	scrModHit();
	//debug("daamge taken: ",string(prevhealth-my_health));
	scrHumphryHit();
	if Player.ultra_got[100] && team != other.team
	{
	//	gunangle=random(360)
		target = -1;
		walk = 0;

		var amount = Player.reload * 0.6;
		if Player.skill_got[5]
			var amount = Player.reload * 0.8;
		else
			var amount = Player.reload * 0.6;
		
		if alarm[1] > 0 && my_health > 0
		{
			alarm[1] += amount;
			instance_create(x,y-6,SleepFX);
		}


		//if alarm[2]>1
		//alarm[2]=0;

	}

}    
   
 
}

