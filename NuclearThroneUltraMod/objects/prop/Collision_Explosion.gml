if instance_exists(Player)
{
    if other.Humphry=true
    {
    
        with other
        {
        if team=2 && HumphryHit=0 //&& HumphryHit!=2//||team=0
        {
        HumphryHit=3;//Could still get a hit in
        with projectile
        HumphryHit=3;
        with Explosion
        HumphryHit=3;
        }
        else if team=2 && HumphryHit!=1 && HumphryHit!=2//||team=0
        {
        HumphryHit=2;//This one has hit
        
        with projectile
        HumphryHit=2;
        with Explosion
        HumphryHit=2;
        
        //with Player
        //HumphrySkill++;
        
        
        if place_meeting(x,y,HumphryProjectile)
        {
        
        with HumphryProjectile
        HumphryHit=2;
        
        }
        
        }
        
        }
    
    
    
    }  
}

