if (Humphry = true)
{

with instance_create(x,y,HumphryProjectile)
{team=2
HumphryHit=other.HumphryHit;
HumphryNr=other.HumphryNr;
mask_index=other.mask_index;
speed=other.speed;
direction=other.direction;
image_angle=other.image_angle;}

}


