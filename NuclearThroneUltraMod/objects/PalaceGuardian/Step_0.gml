/// @description Interupting animations

// Inherit the parent event
event_inherited();

//Get hit during teleport teleport immediatly
if (spr_idle == spr_disappear && sprite_index == spr_hurt && round(image_index) == 2)
{
	sprite_index = spr_idle;
	image_index = image_number - 1;
}
else if (spr_idle == spr_fire && sprite_index == spr_hurt && round(image_index) == 2)
{
	sprite_index = spr_idle;
	image_index = image_number - 1;
}
else if (spr_idle == spr_appear && sprite_index == spr_hurt && round(image_index) == 2)
{
	sprite_index = spr_idle;
	image_index = image_number - 1;
}