if !instance_exists(Player){instance_destroy();exit;}
//Copy Player
triggerfinger=Player.triggerfinger;
//strongspirit=Player.strongspirit;
//strongspiritused=Player.strongspiritused;
if wep!=Player.wep
scrWeaponHold();
wep=Player.wep;
bwep=Player.bwep;
//wepflip = Player.wepflip;
//bwepflip = Player.bwepflip;
//wepangle = Player.wepangle

can_shoot=Player.can_shoot;
bcan_shoot =Player.bcan_shoot
reload = Player.reload
breload = Player.breload
clicked=Player.clicked

ammo[0] = Player.ammo[0]
ammo[1] = Player.ammo[1]
ammo[2] = Player.ammo[2]
ammo[3] = Player.ammo[3]
ammo[4] = Player.ammo[4]
ammo[5] = Player.ammo[5]
//ammo[wep_type[wep]]=Player.ammo[wep_type[wep]];

if my_health<=0{
instance_destroy();
}

