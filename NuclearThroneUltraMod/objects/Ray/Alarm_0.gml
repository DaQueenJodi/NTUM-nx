ammo -= 1

alarm[0] = time

if instance_exists(creator)
{
x = creator.x
y = creator.y
//snd_play(sndJackHammer)
//FIRING
if(instance_exists(target))
{
if(instance_exists(Player)){

    if (point_distance(x,y,target.x,target.y) < 120+(60*Player.skill_got[19])&& Direction>direction-30-(30*Player.skill_got[19])&&Direction<direction+30+(30*Player.skill_got[19]) )
    {
        if!(collision_line(x,y,target.x,target.y,Wall,false,true) )//No walls between player and target?
        {
            if(explosive==2)
            {
            with instance_create(target.x,target.y,Morph)
            scrCanHumphry(); 
            }
            if(explosive==3){
            with instance_create(target.x,target.y,ExplosiveMorph)
            scrCanHumphry(); }
        }
            
    }}
}

BackCont.viewx2 += lengthdir_x(2,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(2,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
//BackCont.shake += 1
wkick = 2}


if ammo = 0

instance_destroy()

