event_inherited();
typ = 2 //0 = nothing, 1 = deflectable, 2 = destructable
dmg = 3
if instance_exists(Player){
if Player.ultra_got[40]
dmg=4;
}

