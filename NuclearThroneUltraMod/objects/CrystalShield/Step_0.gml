if instance_exists(Player){
if Player.ultra_got[6]=1{
if KeyCont.key_west[p] = 2 or KeyCont.key_west[p] = 1
hspeed -= 3
if KeyCont.key_east[p] = 2 or KeyCont.key_east[p] = 1
hspeed += 3
if KeyCont.key_nort[p] = 2 or KeyCont.key_nort[p] = 1
vspeed -= 3
if KeyCont.key_sout[p] = 2 or KeyCont.key_sout[p] = 1
vspeed += 3


if speed > Player.maxspeed/1.25
speed = Player.maxspeed/1.25
}
if(sprite_index!=spr_disappear){//exit code as soon as the shield starts to dissapear
if instance_exists(Player)
{

}
else if sprite_index != spr_disappear
{
sprite_index = spr_disappear
image_speed = 0.6
image_index = 0
}
if(sprite_index!=spr_disappear){
Player.x = x;
Player.y = y;
Player.speed = 0;
}
time += 3
if Player.skill_got[5]//thronebuttttt
time-=2;
if time > 220 and sprite_index != spr_disappear
{
Player.visible=true;
sprite_index = spr_disappear
image_speed = 0.6
image_index = 0
}
if KeyCont.key_spec[p] = 3
{
Player.visible=true;
sprite_index = spr_disappear
image_speed = 0.6
image_index = 0
}}
if Player.ultra_got[6]=1{
mask_index=mskMovingShield;
if place_meeting(x,y,Wall){

move_contact_solid(direction,max(1,min(Player.maxspeed,speed)))
if !place_free(x+hspeed,y){hspeed /= 2
if !place_free(x+hspeed,y) hspeed = 0}
if !place_free(x,y+vspeed){vspeed /= 2
if !place_free(x,y+vspeed)vspeed = 0}

}
mask_index=mskShield;
}}

wave++;

