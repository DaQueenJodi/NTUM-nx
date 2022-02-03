/// @description Init
range = 128;
destroyStep = 64;
step = 32;
traveled = 0;
looped = 0;
dashDir = point_direction(x,y,mouse_x,mouse_y);
image_angle = dashDir;
dmg = 7;
team = 2;
trailXScale = 1;
trailYScale = 1;
trailSprite = sprSheepHyperDash
bloomSprite = trailSprite;
if (instance_exists(Player))
{
	if Player.skill_got[5]//Thronebutt
	{
		dmg += 3;
		range += 16;
		trailSprite = sprSheepHyperDashThroneButt;
	}
	if Player.skill_got[2]//Extra feet synergy why not
	{
		range += 16;
		trailXScale = 1.25;
	}
	if (Player.skill_got[8])//Gammaguts
	{
		dmg += 3;
		bloomSprite = sprSheepHyperDashGammaGutsBloom;
	}
}
event_perform(ev_alarm,0);