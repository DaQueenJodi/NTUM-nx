scrDrop(50,1)
scrDrop(30,0)
scrDrop(30,0)
event_inherited()

//GAMEMODE UNLOCKABLE NO ELITE POPO
scrUnlockGameMode(18,"FOR DESTROYING A VAN");

snd_play(sndExplosionL)
repeat(3)
{
with instance_create(x+lengthdir_x(8,ang),y+lengthdir_y(8,ang),PopoExplosion)
{
	if team == 2
		sprite_index =sprPopoExploRogue;	
}
ang+=360/3;
}


