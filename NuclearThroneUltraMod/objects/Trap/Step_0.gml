if fire > 0 and !instance_exists(Portal)
{
fire -= 1
if side = 1||loop
{
with instance_create(x-4,y+8,TrapFire)
hspeed = -6
with instance_create(x+20,y+8,TrapFire)
hspeed = 6
}
if side = 0||loop
{
with instance_create(x+8,y-4,TrapFire)
vspeed = -6
with instance_create(x+8,y+20,TrapFire)
vspeed = 6
}
}

if !position_meeting(x,y,Wall)
instance_destroy()

