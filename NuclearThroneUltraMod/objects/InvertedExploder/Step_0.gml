event_inherited()

if sprite_index != spr_hurt
motion_add(direction,0.6)


if hspeed > 0
right = 1
else if hspeed < 0
right = -1

speed = 3.5

if instance_exists(Player)
{
if close = 0 and point_distance(x,y,Player.x,Player.y) < 100
{
close = 1
snd_play(sndFrogClose)
}
}

