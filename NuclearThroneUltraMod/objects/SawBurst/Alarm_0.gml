ammo -= 1

alarm[0] = time

if instance_exists(creator)
{
x = creator.x
y = creator.y
snd_play_fire(sndJackHammer)
//FIRING
if instance_exists(Player){
    with instance_create(x+lengthdir_x((Player.skill_got[13]+Player.bettermelee)*10,point_direction(x,y,mouse_x,mouse_y)),y+lengthdir_y((Player.skill_got[13]+Player.bettermelee)*10,point_direction(x,y,mouse_x,mouse_y)),Shank)
    {
    
    if instance_exists(Player){
    Player.longarms = 0
    Player.longarms = (Player.skill_got[13]+Player.bettermelee)*3
    motion_add(point_direction(x,y,mouse_x,mouse_y)+random(30)-15,3+Player.longarms)}
    else{
    motion_add(point_direction(x,y,mouse_x,mouse_y)+random(30)-15,3)}
    image_angle = direction
    team = other.team}
}
else
{
    with instance_create(x,y,Shank)
    {
    motion_add(point_direction(x,y,mouse_x,mouse_y)+random(30)-15,3)
    image_angle = direction
    team = other.team}

}
BackCont.viewx2 += lengthdir_x(6,point_direction(x,y,mouse_x,mouse_y))*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(6,point_direction(x,y,mouse_x,mouse_y))*UberCont.opt_shake
if BackCont.shake < 1
BackCont.shake = 1
creator.wkick = -8
}

if ammo <= 0
instance_destroy()


