function scrCheckGold(targetWep) {/*
	if (targetWep==39 || targetWep==40 || targetWep == 41 || targetWep == 42 || targetWep == 43 || targetWep == 44 || targetWep == 45
	||targetWep==224||targetWep==225||targetWep==226||targetWep==227||targetWep==228||targetWep==229||targetWep==230||targetWep==276
	||targetWep==277||targetWep==278||targetWep==279||targetWep==280||targetWep==281||targetWep==282||targetWep==283||targetWep==284
	||targetWep==285||targetWep==286||targetWep==287||targetWep==288||targetWep==290)
	return true
	else
	return false
*/
//This is the golden oops gun: 298
	return string_copy(wep_name[targetWep],0,4) == "GOLD"

}
