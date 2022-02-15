//PRE LOOP
alarm[1] = 4+random(4)

scrTarget()
run = 0;
if target > 0
{
if collision_line(x,y,target.x,target.y,Wall,0,0) < 0
{
	run = 1.5;
	var pdir =  point_direction(x,y,target.x,target.y);
	motion_add(pdir,0.8)
if point_distance(target.x,target.y,x,y) > 32
{
direction = pdir+random(180)-90
gunangle = pdir
ammo = maxAmmo;
alarm[2] = 2;
alarm[1] += 2;

}
else if point_distance(target.x,target.y,x,y) < 96
{
//Fire
if random(5) < 4.4 && ammo > 0
{
direction = pdir+random(180)-90
gunangle = pdir
ammo = maxAmmo;
alarm[2] = 2;
alarm[1] += 2;
}

}
else
{
direction = point_direction(target.x,target.y,x,y)+random(20)-10
speed = 0.4
walk = 20+random(10)
gunangle = point_direction(x,y,target.x,target.y)
}
}
else if random(10)<1
{
motion_add(point_direction(x,y,target.x,target.y),0.4)
mp_potential_step(target.x,target.y,0.8,false)
}
else if random(4)<1
{
motion_add(random(360),0.4)
}
}
else if random(10) < 1
{
motion_add(random(360),0.4)
}