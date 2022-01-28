scrDrop(20,20)


event_inherited()


dir = random(360)
repeat(8)
{
with instance_create(x,y,InvertedFastRat)
motion_add(other.dir,3+random(1))
with instance_create(x,y,AcidStreak)
{
motion_add(other.dir,8)
image_angle = direction
}
dir += 72
}

