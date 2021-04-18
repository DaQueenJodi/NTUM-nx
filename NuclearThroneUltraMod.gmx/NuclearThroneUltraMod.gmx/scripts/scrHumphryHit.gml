if Player.race=26//HUMPRHY SKILL
{
    with other
    {
    
    if HumphryHit!=1 && HumphryHit!=2//||team=0
    {
    HumphryHit=1;//This one has hit

    //extra damage
    other.my_health -= floor(Player.HumphrySkill*0.4);
    
    with projectile
    {
    if HumphryNr=other.HumphryNr//Same shot?
    HumphryHit=2;
    }
    
    
    with Player
    {
    HumphryTB=0;
    if ultra_got[101]
    HumphrySkill+=2;
    else
    HumphrySkill++;
    if HumphrySkill>=69
    scrUnlockCSkin(26,"FOR REACHING 69 SKILL",0);
    }
    
    with Explosion
    {
    if Humphry=true
    {
    if HumphryNr=other.HumphryNr
    HumphryHit=2;
    }
    }
    
    if place_meeting(x,y,HumphryProjectile)
    {
    
    with HumphryProjectile
    HumphryHit=1;
    
    }
    
    }
    
    }

}
