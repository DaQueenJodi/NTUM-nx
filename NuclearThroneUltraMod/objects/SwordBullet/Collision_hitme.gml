if other.team != team and other.my_health > 0
{//instance_destroy()
with other
{
my_health -= 1
sprite_index = spr_hurt
image_index = 0
//motion_add(other.direction,3)
}
snd_play(other.snd_hurt)
}

/*
if other.team != team and other.my_health > 0
{instance_destroy()
with other
{
my_health -= 2
sprite_index = spr_hurt
image_index = 0
motion_add(other.direction,3)
}
snd_play(other.snd_hurt)
with instance_create(x,y,BulletHit)
sprite_index = sprBullet2Disappear}*/

/* */
/*  */
