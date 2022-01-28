if other.Humphry && instance_exists(Player)
{
if Player.race=26//HUMPRHY SKILL
{
    with other
    {
    
    if HumphryHit!=1 && HumphryHit!=2//||team=0
    {
    HumphryHit=1;//This one has hit
    
    with projectile
    {
    if HumphryNr=other.HumphryNr
    HumphryHit=2;
    }
    
    with Explosion
    {
    if Humphry=true
    {
    if HumphryNr=other.HumphryNr
    HumphryHit=2;
    }
    }
    
    with Player
    HumphrySkill++;
    
    
    if place_meeting(x,y,HumphryProjectile)
    {
    
    with HumphryProjectile
    HumphryHit=1;
    
    }
    
    }
    
    }

}
    
}

