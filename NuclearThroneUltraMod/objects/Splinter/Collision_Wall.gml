if speed != 0
{
snd_play(sndBoltHitWall)
alarm[0] = 1;
move_contact_solid(direction,16)
instance_create(x,y,Dust)
image_index = 2
}

