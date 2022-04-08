if fire > 0 and !instance_exists(Portal)
{
fire -= 1
with instance_create(x-4,y+8,ToxicGas)
hspeed = -3
with instance_create(x+20,y+8,ToxicGas)
hspeed = 3
with instance_create(x+8,y-4,ToxicGas)
vspeed = -3
with instance_create(x+8,y+20,ToxicGas)
vspeed = 3
}

if !position_meeting(x,y,Wall)
instance_destroy()

