/// @description Animation state transitions
if sprite_index == spr_hurt && !fire
{
	spr_idle = spr_normal;
	spr_walk = spr_normal;
	sprite_index = spr_normal;
}
else if fire && sprite_index == spr_fire
{
	fire = false;
	spr_idle = spr_normal;
	spr_walk = spr_normal;
	sprite_index = spr_normal;
	image_index = 0;
	//alarm[1] += 20;
}
else if (sprite_index == spr_disappear)
{
	fire = false;
	if instance_exists(Floor) && instance_exists(Player)
	{
		meleedamage = 0;
		var tries = 0;
		do 
		{
		var dis = random(64) + 48;
		var angle = random(360);
		var xx = Player.x+lengthdir_x(dis,angle);
		var yy = Player.y+lengthdir_y(dis,angle);
		var targetFloor = instance_nearest(xx,yy,Floor);
		tries ++;
		} until (point_distance(Player.x,Player.y,targetFloor.x,targetFloor.y) > 40 || tries > 10);
		x = targetFloor.x;
		y = targetFloor.y;
		sprite_index = spr_appear;
		spr_idle = spr_appear;
		spr_walk = spr_appear;
		snd_play(snd_appear);
		image_index = 0;
	}
	else
	{
		image_speed = 0;
		visible = false;
	}
}
else if (sprite_index == spr_appear || sprite_index == spr_hurt)
{
	fire = false;
	meleedamage = 2;
	sprite_index = spr_normal;
	spr_idle = spr_normal;
	spr_walk = spr_normal;
	//alarm[1] += 20;
}