target=enemy;
//if instance_exists(target)
//dir = instance_nearest(x+lengthdir_x(80,direction),y+lengthdir_y(80,direction),target)
var oldx, oldy;
oldx = x
oldy = y

var accuracycharge=charge

if accuracycharge<2
accuracycharge=2;
if instance_exists(enemy)
{
var enem = instance_nearest(mouse_x,mouse_y,enemy);
if ultraD && point_distance(mouse_x,mouse_y,enem.x,enem.y)<128
{
direction=point_direction(x,y,enem.x,enem.y);
image_angle=direction;
}
else
direction = image_angle+(random(accuracycharge*4)-(accuracycharge*2))//30 15

}

speed = 4
//if instance_exists(target)
//{
if point_distance(x,y,mouse_x,mouse_y) < 120
motion_add(point_direction(x,y,mouse_x,mouse_y),1)
//}
image_angle = direction
speed = 0
if ultraD
mask_index=mskPickupThroughWall;
move_contact_solid(direction,10+random(4))//8 r 4
if ultraD
mask_index=mskLaser;
speed = 0
image_xscale = -point_distance(x,y,oldx,oldy)/2

ammo -= 1;

if !place_free(x,y) && !ultraD
{
x = xprevious
y = yprevious
ammo=0;}

if ammo > 0
{
//if ammo>20
//{var indexammo = 20;}
//else
//{var indexammo = ammo;}
image_index += 0.4/ammo//indexammo
with instance_create(x,y,HorrorBeam)
{
originnr=other.originnr
bskin=other.bskin
if bskin=1
sprite_index=sprHorrorBeamB;
else if bskin=2
sprite_index=sprHorrorBeamC;

rad=other.rad;
direction = other.direction
image_angle = direction
ammo = other.ammo;
team = other.team
charge=other.charge;
image_index = other.image_index
if ammo=20
alarm[0]=1;
else if ammo=40
alarm[0]=1;
else if random(4)<3
event_perform(ev_alarm,0);
else
alarm[0]=1;

}
}
else
{
if bskin=1
{
with instance_create(x+lengthdir_x(image_xscale/2,image_angle),y+lengthdir_y(image_xscale/2,image_angle),LightningHit)
sprite_index=sprHorrorHitB;
}
else if bskin=2
{
with instance_create(x+lengthdir_x(image_xscale/2,image_angle),y+lengthdir_y(image_xscale/2,image_angle),LightningHit)
sprite_index=sprHorrorHitC;
}
else
{
with instance_create(x+lengthdir_x(image_xscale/2,image_angle),y+lengthdir_y(image_xscale/2,image_angle),LightningHit)
sprite_index=sprHorrorHit;
}
}

