if visible && KeyCont.key_fire[p] = 1 and OptionSelect.selected = 0 and OptionSelect2.selected = 0 and StatsSelect.selected = 0 and CreditsSelect.selected = 0
{
if button = 0
button = 1
else
button = 2
}
else
button = 0
//y+34 moet 24
if button = 1 and mouse_x > x and mouse_x < x+24 and mouse_y > y and mouse_y < y+24 and image_index != racemax+1 and image_speed = 0 && UberCont.race_have[num]==1
{
    if Menu.race = num
    {
    with Menu
    {
    switch (race)
    {
    case 0:
    snd_cnfm=sndMutant0Cnfm;
    break;
    case 1:
    snd_cnfm=sndMutant1Cnfm;
    break;
    case 2:
    snd_cnfm=sndMutant2Cnfm;
    break;
    case 3:
    snd_cnfm=sndMutant3Cnfm;
    break;
    case 4:
    snd_cnfm=sndMutant4Cnfm;
    break;
    case 5:
    snd_cnfm=sndMutant5Cnfm;
    break;
    case 6:
    snd_cnfm=sndMutant6Cnfm;
    break;
    case 7:
    snd_cnfm=sndMutant7Cnfm;
    break;
    case 8:
    snd_cnfm=sndMutant8Cnfm;
    break;
    case 9:
    snd_cnfm=sndMutant9Cnfm;
    break;
    case 10:
    snd_cnfm=sndMutant10Cnfm;
    break;
    case 11:
    snd_cnfm=sndSniperFire;
    break;
    case 12:
    snd_cnfm=sndMutant12Cnfm;
    break;
    case 13:
    snd_cnfm=sndSheepDead;
    break;
    case 14:
    snd_cnfm=sndPandaHit;
    break;
    case 15:
    snd_cnfm=sndPlasma;
    break;
    case 16:
    snd_cnfm=sndSnowTankPreShoot;
    break;
    case 17:
    snd_cnfm=sndGunSmithLowHP;
    break;
    case 18:
    snd_cnfm=sndStatueXP;
    break;
    case 19:
    snd_cnfm=sndMutant19Cnfm;
    break;
    case 20:
    snd_cnfm=sndMutant20Cnfm;
    break;
    case 21:
    snd_cnfm=sndMutant11Cnfm;
    break;
    case 22:
    snd_cnfm=sndMutant22Cnfm;
    break;
    case 23:
    snd_cnfm=sndMutant23Cnfm;
    break;
    case 24:
    snd_cnfm=sndMutant24Slct;
    break;
    case 25:
    snd_cnfm=sndRavenLand;
    break;
    case 26:
    snd_cnfm=sndMutant26Cnfm;
    break;
    
    }
    
	with MusCont {
		confirmSound = other.snd_cnfm;
	}
	
    UberCont.racepick = Menu.race
	var ranChar = false;
    if race = 0 || UberCont.opt_gamemode = 23
    {
		ranChar = true;
		do race = ceil(random(racemax)) until UberCont.race_have[race] = 1
	}
    if crown = 0
    crown = ceil(random(crownmax))
    instance_create(x,y,SpiralCont)
	draw_texture_flush();//mainly used to only remove the main menu texture page cause we don't need that while in game.
	UberCont.race = race
    with instance_create(x,y,GenCont)
    {race = other.race
    crown = other.crown}
    instance_create(x,y,Player);
	//Start settings save
	with UberCont
	{
		scrSave();
	}
	with Player
	{
		restarted = true;
		randomlySelected = ranChar;
	}
    room_restart()
    exit;
    }
    }
    else
    {
    switch (num)
    {
    case 0:
    snd_slct=sndMutant0Slct;
    break;
    case 1:
    snd_slct=sndMutant1Slct;
    break;
    case 2:
    snd_slct=sndMutant2Slct;
    break;
    case 3:
    snd_slct=sndMutant3Slct;
    break;
    case 4:
    snd_slct=sndMutant4Slct;
    break;
    case 5:
    snd_slct=sndMutant5Slct;
    break;
    case 6:
    snd_slct=sndMutant6Slct;
    break;
    case 7:
    snd_slct=sndMutant7Slct;
    break;
    case 8:
    snd_slct=sndMutant8Slct;
    break;
    case 9:
    snd_slct=sndMutant9Slct;
    break;
    case 10:
    snd_slct=sndMutant10Slct;
    break;
    case 11:
    snd_slct=sndSniperTarget;
    break;
    case 12:
    snd_slct=sndMutant12Slct;
    break;
    case 13:
    snd_slct=sndSheep;
    break;
    case 14:
    snd_slct=sndPanda;
    break;
    case 15:
    snd_slct=sndHyperLightning;
    break;
    case 16:
    snd_slct=sndHammer;
    break;
    case 17:
    snd_slct=sndGunSmithHit;
    break;
    case 18:
    snd_slct=sndStatueCharge;
    break;
    case 19:
    snd_slct=sndMutant19Slct;
    break;
    case 20:
    snd_slct=sndMutant20Slct;
    break;
    case 21:
    snd_slct=sndMutant11Slct;
    break;
    case 22:
    snd_slct=sndMutant22Slct;
    break;
    case 23:
    snd_slct=sndMutant23Slct;
    break;
    case 24:
    snd_slct=sndMutant24Slct;
    break;
    case 25:
    snd_slct=sndRavenLift;
    break;
    case 26:
    snd_slct=sndMutant26Slct;
    break;
    
    }
    snd_play(snd_slct)
    Menu.race = num
    
    with LoadoutSelect
	{
		if other.num == 0
			wepmenuopen = false;
		race = Menu.race;
		skin = UberCont.skin[race]
		wep = UberCont.selected_start_wep[race];
		UberCont.start_wep[0]=race_swep[race];//Starting weapon 0 is different for each character
	}
    
    }
}

