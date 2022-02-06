/// @description xxx
if sprite_index = spr_fire
{
	fire = false;
	spr_idle = spr_normal;
	spr_walk = spr_normal;
	alarm[1] += 20;
}
else if (sprite_index == spr_disappear)
{
	if instance_exists(Floor) && instance_exists(Player)
	{
		var dis = random(1)*64 + 48;
		var angle = random(360);
		var xx = Player.x+lengthdir_x(dis,angle);
		var yy = Player.y+lengthdir_y(dis,angle);
		var targetFloor = instance_nearest(xx,yy,Floor);
		x = targetFloor.x;
		y = targetFloor.y;
		sprite_index = spr_appear;
		spr_idle = spr_appear;
		spr_walk = spr_appear;
		snd_play(snd_appear);
		image_index = 0;
	}
}
else if (sprite_index == spr_appear || sprite_index == spr_hurt)
{
	sprite_index = spr_normal;
	spr_idle = spr_normal;
	spr_walk = spr_normal;
	alarm[1] += 20;
}