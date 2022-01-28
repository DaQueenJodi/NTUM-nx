if speed = 0
{
repeat(2){
with instance_create(x+random(96)-48,y+random(96)-48,IDPDPortalCharge)
{
motion_add(point_direction(x,y,other.x,other.y),2+random(1))
alarm[0] = point_distance(x,y,other.x,other.y)/speed+1
}
}
}

if alarm[0] =20
snd_play(sndNadeAlmost);

