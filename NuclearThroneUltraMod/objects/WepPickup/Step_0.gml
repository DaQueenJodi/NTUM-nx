if image_index < 1
image_index += random(0.04)
else
image_index += 0.4

if !place_meeting(x,y,Wall)
image_angle += rotspeed*speed

if curse = 1 and random(3) < 1
instance_create(x+random(8)-4,y+random(8)-4,Curse)

