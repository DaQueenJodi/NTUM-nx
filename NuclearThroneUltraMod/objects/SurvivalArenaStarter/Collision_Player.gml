/// @description Start wave
if KeyCont.key_pick[other.p] = 1
{
	KeyCont.key_pick[Player.p] = 2;
//snd_play(other.snd_thrn);

/*
with other
{
	area = 113
	subarea = 1
}
*/
with enemy
	my_health = 0

with instance_create(x,y,Portal) type = 1

instance_change(Wind,false)
}