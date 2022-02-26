/// @description Spectacular
snd_play_2d(sndNothingDeath1);
instance_create(x,y,ThroneExplo);
if instance_exists(Player)
{
	if Player.onlyusemerevolver
	{//ONE WEAPON ONLY UNLOCK!
	scrUnlockGameMode(1,"FOR REACHING AND#BEATING THE THRONE#USING ONLY A REVOLVER");
	}
}

scrRaddrop();
scrEndBoss();
Sleep(200)
