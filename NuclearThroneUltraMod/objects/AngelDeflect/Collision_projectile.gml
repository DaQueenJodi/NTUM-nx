if team != other.team && instance_exists(Player)
{
if other.typ =1 && Player.speed>0 && random(5.2)<1
{
other.team = team


other.direction = point_direction(x,y,other.x,other.y)
other.image_angle = other.direction
with instance_create(other.x,other.y,Deflect)
{
image_angle = other.direction
sprite_index=sprGuardianDeflect;
}
if Player.area=100 && instance_exists(CrownGuardian)
{
	scrUnlockCSkin(18,"FOR REFLECTING A PROJECTILE#THAT IS REFLECTED BY A CROWN GUARDIAN#AS ANGEL",0);
}

}
if other.typ = 2 && Player.speed>0 && random(5.5)<1
{
with other
instance_destroy()
}
}

