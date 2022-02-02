if !instance_exists(Player)
{instance_destroy() exit;}
if Player.sheepPower < Player.sheepPowerToHaveEffect
exit;

if team != other.team
{
	Player.sheepPower -= projectileHitBrake;
	Player.speed -=1;
if other.typ = 2 or other.typ = 1 && Player.ultra_got[51]=0
{
Sleep(2);
BackCont.viewx2 += lengthdir_x(1,direction)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(1,direction)*UberCont.opt_shake
BackCont.shake += 5

with other{
instance_destroy();}

if projectileHits<1{
instance_destroy();}//Dont destroy based on projectile amount yo

if projectileHits<2
room_speed=20;//What yo

projectileHits-=1;
image_index+=1;
}
else if (Player.ultra_got[51]=1){
    //deflect
    if projectileHits<1{
    instance_destroy();}
    if other.typ=1{
    other.direction = point_direction(x,y,other.x,other.y)
    other.image_angle = other.direction
    with instance_create(other.x,other.y,Deflect)
    image_angle = other.direction}
    else if other.typ=2
    {
    with other
    instance_destroy()
    }
    projectileHits-=1;
    image_index+=1;
    }
}

