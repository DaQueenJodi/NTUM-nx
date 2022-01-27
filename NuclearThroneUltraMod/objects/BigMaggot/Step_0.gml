event_inherited()

if sprite_index != spr_hurt
motion_add(direction,0.5)

if speed > 1+rage*2
speed = 1+rage*2

if instance_exists(Player)
{
if Player.loops>0
{//LOOP
if speed > 1+rage*4
speed = 1+rage*4
if speed < 1
speed=1;
}
else 
{

if speed > 1+rage*2
speed = 1+rage*2
if speed < 0.5
speed = 0.5


}
}else 
{
if speed > 1+rage*2
speed = 1+rage*2
if speed < 0.5
speed = 0.5
}

if hspeed > 0
right = 1
else if hspeed < 0
right = -1


