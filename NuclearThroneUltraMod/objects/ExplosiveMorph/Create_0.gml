event_inherited();
image_speed = 0.4

BackCont.shake += 1
typ=0;
team = 2
dmg=4;
if instance_exists(Player)
{
if Player.skill_got[17] = 1
dmg=6+Player.betterlaserbrain;
}
repeat(3)
with(instance_create(x,y,Smoke)){
image_blend = make_color_rgb(244,145,255);
}

