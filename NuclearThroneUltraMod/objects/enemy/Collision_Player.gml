/*if meleedamage > 0 and team != other.team
{
with other
{
if !(skill_got[8] = 1)||!(other.my_health==0){//gamma guts immunity!
    if sprite_index != spr_hurt
    {
    snd_play(other.snd_mele)
    sprite_index = spr_hurt
    image_index = 0
    snd_play(other.snd_hurt)
    my_health -= other.meleedamage
    motion_add(point_direction(other.x,other.y,x,y),4)
    Sleep(100)
    }
}
}
}*/

if size <= 2
motion_add(point_direction(other.x,other.y,x,y),1)

/* */
/*  */
