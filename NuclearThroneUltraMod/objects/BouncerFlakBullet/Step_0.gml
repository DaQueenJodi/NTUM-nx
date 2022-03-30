if random(3) < 1
{
with instance_create(x,y,Smoke)
motion_add(random(360),random(2))
}

if speed <2
instance_destroy()

image_angle += rotation;