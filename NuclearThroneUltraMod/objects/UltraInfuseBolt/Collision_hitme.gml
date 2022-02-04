/*if speed > 0 and other.my_health > 0 and other.team != team
{
snd_play(other.snd_hurt, other.hurt_pitch_variation)
instance_destroy()

with other
{
my_health -= 4
sprite_index = spr_hurt
image_index = 0
motion_add(other.direction,3)
}
target = other.id
with instance_create(x,y,BoltStick)
{
sprite_index = sprSplinterStick
image_angle = other.image_angle
target = other.target
}

}*/
if other.team != team
{
if speed > 0
snd_play(sndGrenadeStickWall)
speed = 0
x = other.x+offx
y = other.y+offy


with other
{
    if sprite_index!=spr_hurt
    {
    my_health -= 15//5 for normal
    sprite_index = spr_hurt
    image_index = 0
    motion_add(other.direction,3)
    
    with instance_create(x,y,Rad)
    {motion_add(other.direction,other.speed)
    motion_add(random(360),random(12)+3)
    repeat(speed)
    speed *= 0.9}

    }
}


if alarm[0]>13
alarm[0] = 13;




}

/* */
/*  */
