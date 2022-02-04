function scrInitOptions() {
	//OPTIONS
	//audio
	opt_sfxvol = 1
	opt_musvol = 0.8
	opt_ambvol = 0.7

	//visual
	opt_fulscrn = 1
	opt_niceshd = 1
	opt_nicedrk = 1
	opt_sideart = 0

	//controls
	//opt_gamepad = 0
	//opt_autoaim = 1

	//other
	opt_shake = 1
	opt_mousecp = 0
	opt_freeze = 1
	opt_loading = 1
	opt_bossintro = 1
	//Gamemode stuff that doesn't get saved.
	opt_gamemode=0;
	opt_gm1wep=1;

	//more visual
	opt_fitscrn = 0


	//Custom controls
	opt_up=87//W
	opt_down=83//S
	opt_left=65//A
	opt_right=68//D
	opt_swap=81//Q
	opt_pickup=69//E

	//DETECT RESOLUTION
	//min(floor(display_get_width()/320),floor(display_get_height()/240))



}
