instance_create(x,y,EBulletHit)
instance_create(x,y,WallBreak);
with instance_create(x,y,SmallExplosion)
{
team=other.team;
dmg=1;
if instance_exists(Player) && Player.crown == 3//crown of death
{
	var dir = random(360);
	var dis = 8 + random(16);
	instance_create(x+lengthdir_x(dis,dir),y+lengthdir_y(dis,dir),SmallExplosion);
}
}
if !audio_is_playing(sndExplosion)
snd_play(sndExplosion);

