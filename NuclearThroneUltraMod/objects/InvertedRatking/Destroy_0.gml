scrDrop(8,16)


event_inherited()


dir = random(360)
repeat(5)
{
with instance_create(x,y,AcidStreak)
{
motion_add(other.dir,8)
image_angle = direction
}
dir += 72
}

