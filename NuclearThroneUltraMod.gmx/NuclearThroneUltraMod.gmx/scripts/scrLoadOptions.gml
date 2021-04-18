//OPTIONS
//audio
opt_sfxvol=ini_read_real("OPTIONS","sfxvol",0.6);
opt_musvol = ini_read_real("OPTIONS","musvol",0.8);
opt_ambvol = ini_read_real("OPTIONS","ambvol",0.7);

//visual
opt_fulscrn = ini_read_real("OPTIONS","fulscrn",1);
opt_crosshair = ini_read_real("OPTIONS","crosshair",0);
opt_bloom = ini_read_real("OPTIONS","bloom",0.1);
opt_shadow = ini_read_real("OPTIONS","shadow",1);
opt_highquality = ini_read_real("OPTIONS","highquality",1);
//opt_nicedrk = ini_read_real("OPTIONS","nicedrk",0);

//controls
//opt_gamepad = ini_read_real("OPTIONS","gamepad",0);
//opt_autoaim = ini_read_real("OPTIONS","autoaim",1);

//other
opt_shake = ini_read_real("OPTIONS","shake",1);
opt_mousecp = ini_read_real("OPTIONS","mousecp",0);
opt_freeze = ini_read_real("OPTIONS","freeze",1);
opt_loading = ini_read_real("OPTIONS","loading",1);
opt_bossintro = ini_read_real("OPTIONS","bossintro",1);
opt_timer = ini_read_real("OPTIONS","timer",0);

//custom controls (ASCII)
opt_up = ini_read_real("OPTIONS","up",87);//W
opt_down = ini_read_real("OPTIONS","down",83);//S
opt_left = ini_read_real("OPTIONS","left",65);//A
opt_right = ini_read_real("OPTIONS","right",68);//D
opt_swap = ini_read_real("OPTIONS","swap",81);//Q
opt_pickup = ini_read_real("OPTIONS","pickup",69);//E
