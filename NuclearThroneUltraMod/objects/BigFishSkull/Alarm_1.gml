with Player
oasisskip=-1;

with BanditBoss
oasis=false;

with WantBoss
{
	if oasis
		instance_destroy();
}

spr_idle = sprBigFishSkull
spr_hurt = sprBigFishSkullHurt

