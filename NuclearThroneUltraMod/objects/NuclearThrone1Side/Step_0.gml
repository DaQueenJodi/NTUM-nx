/// @description Check if I die so disable me
if my_health <= 0 && !disable
{
	disable = true;
	debug("GOT EM");
	if isLeft
	{
		spr_idle = sprNothingLeftDeactivated;
		spr_hurt = sprNothingLeftDeactivatedHurt;
		with NuclearThrone1
		{
			aTime = max(aTime-1,1);
			with rightSide
			{
				firerate = max(firerate - 1, 1);
				maxAmmo = max(maxAmmo - 2, 3);
			}
		}
	}
	else
	{
		spr_idle = sprNothingRightDeactivated;
		spr_hurt = sprNothingRightDeactivatedHurt;
		with NuclearThrone1
		{
			aTime = max(aTime-1,1);
			with rightSide
			{
				firerate = max(firerate - 1, 1);
				maxAmmo = max(maxAmmo - 2, 3);
			}
		}
	}
}
