with instance_create(x,y,Corpse)
{
size = 1
mask_index = other.mask_index
motion_add(other.direction,other.speed)
speed += max(0,-other.my_health/5)
sprite_index = other.spr_dead
image_xscale = other.right
if speed > 16
speed = 16
if other.race = 4
{
p = other.p
with instance_create(x,y,MeltDead)
{
p= other.p
creator = other.id
}
}
}
scrDrop(4,0)
scrRaddrop();

