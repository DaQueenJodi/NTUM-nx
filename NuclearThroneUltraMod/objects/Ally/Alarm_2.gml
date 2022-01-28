if instance_exists(Portal)
alarm[2] = 1
else
alarm[2] = 40
my_health -= 1
instance_create(x,y,Smoke)

