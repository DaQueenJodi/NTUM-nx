/// @description No movement
speed = 0;
event_inherited();
if hidden && sprite_index == spr_hurt
{
	sprite_index = spr_idle;
	image_speed = 0.4;
	spr_idle = spr_normal;
}