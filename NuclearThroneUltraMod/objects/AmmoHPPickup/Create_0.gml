friction = 0.2

blink = 30
alarm[0] = 200+random(30)


//RUSH CROWN
if instance_exists(Player){
if Player.crown = 4{ alarm[0] /= 3}

if Player.race = 15{ alarm[0] /= 2}//atom

}

image_speed = 0

event_inherited();

supercursed = false;