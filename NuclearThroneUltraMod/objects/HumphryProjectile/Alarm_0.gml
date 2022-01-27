if HumphryHit=0
{
    with projectile
    {
        if team=2 || other.object_index=Disc || other.object_index=ToxicGas || other.object_index=ToxicThrowerGas
        {
            if HumphryNr=other.HumphryNr
            {
                if HumphryHit = 1
                {
                    with other
                    instance_destroy();
                    exit;
                }
            }
        }
    }
    with Explosion
    {
    
            if HumphryNr=other.HumphryNr
            {
                if HumphryHit = 1
                {
                    with other
                    instance_destroy();
                    exit;
                }
            }
    
    }
with Player
{
missedthislevel=true;

if skill_got[5]=1
{
HumphryTB=1;
HumphryTBcount=0;
HumphrySkill--;
}
else
{
HumphrySkill=0;
}
with projectile
HumphryHit=2;

}

}

instance_destroy();

