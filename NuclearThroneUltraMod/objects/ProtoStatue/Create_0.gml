maxhealth = 80//80
spawnhp = maxhealth*0.8-5
size = 2
rad = Player.crownrad
close=false;
///crown of natural selection no rads more items
if Player.crown==13
rad=40

spr_idle = sprProtoStatueIdle
spr_hurt = sprProtoStatueHurt
spr_dead = sprProtoStatueDoneDie


event_inherited()

team=1;

snd_hurt = sndStatueHurt
snd_dead = sndStatueDead

instance_create(x-16,y-16-32,Floor)
instance_create(x-16,y-16+32,Floor)
instance_create(x-16-32,y-16,Floor)
instance_create(x-16+32,y-16,Floor)
instance_create(x-16-32,y-16-32,Floor)
instance_create(x-16-32,y-16+32,Floor)
instance_create(x-16+32,y-16-32,Floor)
instance_create(x-16+32,y-16+32,Floor)

with Wall
{
if place_meeting(x,y,other)
{
instance_destroy()
instance_create(x,y,FloorExplo)
}
}

with Floor{
if point_distance(x+16,y+16,other.x,other.y) < 34
sprite_index = sprFloor100}


//alarm[0] = 300;

