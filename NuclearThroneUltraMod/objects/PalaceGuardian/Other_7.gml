/// @description xxx
if fire && sprite_index = spr_fire
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
		var dis = max(48,point_distance(x,y,Player.x,Player.y));
		var dir = point_direction(x,y,Player.x,Player.y);
		var xx = x+lengthdir_x(dis*0.5,dir);
		var yy = y+lengthdir_y(dis*0.5,dir);
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