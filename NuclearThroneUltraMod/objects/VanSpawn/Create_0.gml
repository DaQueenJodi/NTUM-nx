if instance_exists(Player) && instance_exists(Wall)
{

if Player.area=100
{
instance_destroy()
exit;
}


do {
x = Player.x
y = Player.y
ang = random(360)
x = Player.x+lengthdir_x(96+random(96),ang) y = Player.y+lengthdir_y(96+random(96),ang)
dir = instance_nearest(x,y,Wall)
x = dir.x+16; y = dir.y+16;
}
until point_distance(x,y,Player.x,Player.y) > 64

}

image_speed = 0.4

//if Player.loops>=1
alarm[0] = 40

snd_play(sndVanWarning);
RogueIDPD=false;

