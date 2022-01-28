if instance_number(enemy) = 0 or my_health < maxhealth
{
raddrop = 8
meleedamage = 0
size = 1
image_speed = 0.4

spr_idle = sprGatorIdle
spr_walk = sprGatorWalk
spr_hurt = sprGatorHurt
spr_dead = sprGatorDead

//behavior
walk = 0
gunangle = random(360)
alarm[1] = 10+random(30)
wepangle = choose(-140,140)
wepflip = 1
instance_change(Gator,true)//try not to use this JW


with instance_create(x,y,Shell)
sprite_index = sprCigarette
}

