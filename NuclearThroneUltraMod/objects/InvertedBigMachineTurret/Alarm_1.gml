alarm[1] = 22+random(32)

scrTarget()
if target > 0
{
if collision_line(x,y,target.x,target.y,Wall,0,0) < 0
{
image_angle = point_direction(x,y,target.x,target.y)
if random(4) < 1//banditstyle
{
snd_play(EnemyBullet1)
wkick = 4
sprite_index=spr_fire
with instance_create(x,y,EnemyBullet1)
{
motion_add(other.image_angle+random(20)-10,4.2)
image_angle = direction
team = 1;
}

alarm[1] = 6+random(10)}
else if random(3)<1//shotgunlike
{
snd_play(EnemyBullet1)
wkick = 8
repeat(1+irandom(4))
with instance_create(x,y,EnemyBullet1)
{
motion_add(other.image_angle+random(30)-15,1+random(3))
image_angle = direction
team = 1;
}
}
else if random(2)<1//snipe danger
{
with instance_create(x,y,EnemyBullet1)
{
motion_add(other.image_angle+random(6)-3,3+random(3))
image_angle = direction
team = 1;
}
}

}
}

