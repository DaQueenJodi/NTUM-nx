alarm[0]=200+random(200);

sprite_index=choose(sprBlueFlame,sprBlueFlame,sprBlueFlame,sprBlueFlameBig);

image_xscale=choose(1,-1);

image_speed=0.4;
image_index=irandom(4);
if place_meeting(x,y,Flame)
{
instance_destroy()
}

