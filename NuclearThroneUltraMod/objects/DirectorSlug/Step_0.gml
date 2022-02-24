image_angle = direction


if speed < 2.5 and sprite_index != sprDirectorSlugDisappear
{
sprite_index = sprDirectorSlugDisappear
image_index = 0
image_speed = 0.4
}

if instance_exists(Player){
if KeyCont.key_fire[Player.p] = 1 && turned=false && alarm[0]<1 || (Player.race=7 &&  KeyCont.key_spec[Player.p] = 1 && alarm[0]<1 && turned=false)
{

BackCont.shake += 0.2
instance_create(x,y,Smoke);
speed+=12;
direction=point_direction(x,y,mouse_x,mouse_y);
scrRedirectFx();
turned=true;
}
}

