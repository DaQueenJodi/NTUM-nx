var area;
if instance_exists(Player) area = Player.area
else area = BackCont.area
if area==104
area=103;
if instance_exists(SurvivalWave)//(UberCont.opt_gamemode == 25 && !instance_exists(Vlambeer))
{
	sprite_index=sprWall116Trans;
}
else
switch (area)
{
case 0:
sprite_index=sprWall0Trans;
break;
case 1:
sprite_index=sprWall1Trans;
break;
case 2:
sprite_index=sprWall2Trans;
break;
case 3:
sprite_index=sprWall3Trans;
break;
case 4:
sprite_index=sprWall4Trans;
break;
case 5:
sprite_index=sprWall5Trans;
break;
case 6:
sprite_index=sprWall6Trans;
break;
case 7:
sprite_index=sprWall7Trans;
break;
case 8:
sprite_index=sprWall8Trans;
break;
case 9:
sprite_index=sprWall9Trans;
break;
case 10:
sprite_index=sprWall10Trans;
break;
case 100:
sprite_index=sprWall100Trans;
break;
case 102:
sprite_index=sprWall102Trans;
break;
case 103:
sprite_index=sprWall103Trans;
break;
case 105:
sprite_index=sprWall105Trans;
break;
case 106:
sprite_index=sprWall106Trans;
break;
case 107:
sprite_index=sprWall107Trans;
break;
case 101:
sprite_index=sprWall101Trans;
break;
case 108:
sprite_index=sprWall108Trans;
break;
case 109:
sprite_index=sprWall109Trans;
break;
case 110:
sprite_index=sprWall110Trans;
break;
case 111:
sprite_index=sprWall111Trans;
break;
case 112:
sprite_index=sprWall112Trans;
break;
case 114:
sprite_index=sprWall114Trans;
break;
case 115:
sprite_index=sprWall115Trans;
break;
case 116:
sprite_index=sprWall116Trans;
break;
case 117:
sprite_index=sprWall117Trans;
break;
case 118:
sprite_index=sprWall118Trans;
break;
default:
sprite_index=sprWall0Trans;
break;
}

image_index = choose(0,1,2,3,4,5,6,7)
image_speed = 0

visible=false;
alarm[0]=25;

