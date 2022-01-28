//with Player
//HumphrySkill=4;

if (Humphry = true && object_index!=HumphryProjectile && (team=2 || object_index=Disc || object_index=ToxicGas || object_index=ToxicThrowerGas))
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

