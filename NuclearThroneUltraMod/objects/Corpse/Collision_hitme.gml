//sheep
if instance_exists(Player){
    if Player.ultra_got[52]
    {
    if speed > 1 and other.sprite_index != other.spr_hurt && other.object_index!=Player&&random(9)<1
    {
    
    if Player.skill_got[20] = 1
    {
    dmg = 2
    instance_create(x,y,ImpactFX);
    }
    else
    dmg = 1
    snd_play(sndMeatExplo)
    instance_create(x,y,MeatExplosion);
    //with instance_create(x,y,MeatExplosion){
    //team=Player.team;}
    
    with other
    {
    
    my_health -= round(other.dmg+other.speed/5)
    sprite_index = spr_hurt
    image_index = 0
    motion_add(other.direction,other.speed/2)
    snd_play(snd_hurt)
    
    }
    Sleep(2*size*size)
    speed /= 2
    }
    exit;
    }
    
}


//normal
if size >= other.size-1 and speed > 2 and other.sprite_index != other.spr_hurt
{
if instance_exists(Player)
{
if Player.skill_got[20] = 1
{
dmg = 2
instance_create(x,y,ImpactFX);
}
else
dmg = 1
}
else
dmg = 1
with other
{
my_health -= round(other.dmg+other.speed/5)
sprite_index = spr_hurt
image_index = 0
motion_add(other.direction,other.speed/2)
snd_play(snd_hurt)
}
Sleep(2*size*size)
speed /= 2
}

