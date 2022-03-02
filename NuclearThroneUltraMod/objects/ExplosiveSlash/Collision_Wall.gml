/// @description Break wall
x -= hspeed
y -= vspeed

if walled = 0
{
walled = 1
snd_play(sndMeleeWall)
}
Sleep(5)
with other
{
	instance_create(x+8,y+8,SmallExplosion);
	instance_destroy()
	instance_create(x,y,FloorExplo)
}

