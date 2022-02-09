image_angle = direction


if speed < 6 and sprite_index != sprPopoSlugDisappear and sprite_index != sprPopoSlugDisappearRogue
{
	if team ==2
		sprite_index = sprPopoSlugDisappearRogue;
	else
		sprite_index = sprPopoSlugDisappear
	image_index = 0
	image_speed = 0.4
}

