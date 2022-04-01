///scrLuckyShot();
// /@description
///@param
function scrLuckyShot(){
	var ran = 14;
	if Player.race == 25
		ran = 13;
	if Player.skill_got[6] = 1 and random(ran) < 3
    {
		snd_play_2d(sndLuckyShotProc,0,true);
	    with instance_create(Player.x,Player.y-8,HealFX)
	    {
			sprite_index=sprLuckyShot;
	    }
    
	    var wepammo = Player.wep_type[Player.wep]
	    if Player.bwep!=0
	    var bwepammo = Player.wep_type[Player.bwep]
	    else
	    var bwepammo=choose(1,2,3,4,5);
		if Player.cwep!=0
	    var cwepammo = Player.wep_type[Player.cwep]
	    else
	    var cwepammo=choose(wepammo,bwepammo);
    
	    //melee
	    if wepammo=0
	    wepammo=choose(1,2,3,4,5);
    
	    if bwepammo=0
	    bwepammo=choose(1,2,3,4,5);
	
		if cwepammo=0
	    cwepammo=choose(1,2,3,4,5);
    
	    type = choose(1,2,3,4,5,
		wepammo,wepammo,wepammo,wepammo,
		bwepammo,bwepammo,
		cwepammo,cwepammo)
    
	    Player.ammo[type] += round(Player.typ_ammo[type]/2)
	    if Player.ammo[type] > Player.typ_amax[type]
	    Player.ammo[type] = Player.typ_amax[type]
    
		if (UberCont.opt_ammoicon)
		{
			dir = instance_create(x,y,PopupText);
			dir.sprt = sprAmmoIconsPickup
			dir.ii = type-1;
		    dir.mytext = "+"+string(round(Player.typ_ammo[type]/2));
		    if Player.ammo[type] = Player.typ_amax[type]
				dir.mytext = "MAX";
		}
		else
		{
		    dir = instance_create(x,y,PopupText)
		    dir.mytext = "+"+string(round(Player.typ_ammo[type]/2))+" "+string(Player.typ_name[type])
		    if Player.ammo[type] = Player.typ_amax[type]
				dir.mytext = "MAX "+string(Player.typ_name[type])
		}
    }
}