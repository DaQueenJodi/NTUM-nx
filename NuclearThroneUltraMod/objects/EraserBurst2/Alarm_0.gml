ammo -= 4

alarm[0] = time


if instance_exists(creator)
{
//FIRING
repeat(4){
with instance_create(x,y,Bullet2)
{
motion_add(other.Direction,14+random(4))
image_angle = direction
team = other.team
    if (instance_exists(Player))
    {
    
    if Player.race=11
    {
    if team=2
    speed*=1.18;
    }
    }
}
}
}


if ammo < 1
instance_destroy()

