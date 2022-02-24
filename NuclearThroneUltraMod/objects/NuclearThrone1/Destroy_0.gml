/// @description Spectacular
snd_play_2d(sndNothingDeath1);
instance_create(x,y,ThroneExplo);
if instance_exists(Player)
{
	if Player.onlyusemerevolver
	{//ONE WEAPON ONLY UNLOCK!
	scrUnlockGameMode(1,"FOR REACHING THE WONDERLAND#USING ONLY A REVOLVER");
	}
}