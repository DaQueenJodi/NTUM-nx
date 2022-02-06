///scrDecideCurse();
// /@description
function scrDecideCurse(){
	var curse = 0;
	if instance_exists(Player)
	{
	if random(4) < Player.nochest
	{
	curse = 0
	instance_change(BigWeaponChest,true)
	}
	else if random(16)<1&&Player.hard>2{//8
	curse = 0
	instance_change(EliteWeaponChest,true);
	}
	else if ( instance_exists(Crown)||Player.wepmod1!=0||Player.bwepmod1!=0 ) and random(7) < 1
	curse = 1
	else if Player.crown=14 && random(7)<5//Or you have a weapon mod
	curse = 1
	else if Player.hard > 4 and random(20) < 1
	curse = 1;
	else
	curse = 0;

	}
	else if instance_exists(Crown) and random(7) < 1//Or you have a weapon mod
	curse = 1
	else
	curse = 0
	
	return curse;
}