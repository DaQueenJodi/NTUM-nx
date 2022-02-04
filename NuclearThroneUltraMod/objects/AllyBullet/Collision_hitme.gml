if other.team != team and other.my_health > 0
{if other.object_index = Player
{
if !(other.skill_got[5] = 1 and other.roll = 1)
{
with instance_create(x,y,BulletHit)
sprite_index = sprEnemyBulletHit
instance_destroy()
}
if other.skill_got[5] = 1 and other.roll = 1
{
if team != other.team
{
team = other.team
direction = point_direction(other.x,other.y,x,y)
if typ != 1
instance_destroy()}
}
else
{
if other.sprite_index != other.spr_hurt
{
with other
{
sprite_index = spr_hurt
image_index = 0
my_health -= other.dmg
snd_play(snd_hurt, hurt_pitch_variation)
motion_add(point_direction(other.x,other.y,x,y),4)
Sleep(40)
}
}
}
}
else
{
instance_destroy()

with other
{
snd_play(snd_hurt, hurt_pitch_variation)
my_health -= other.dmg
sprite_index = spr_hurt
image_index = 0
motion_add(other.direction,4)
}
with instance_create(x,y,BulletHit)
sprite_index = sprEnemyBulletHit
}
}

