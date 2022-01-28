alarm[0] = 1+random(60)

if instance_exists(Player)
area = Player.area

if UberCont.opt_highquality=1
{

if area = 0
{
with instance_nearest(__view_get( e__VW.XView, 0 )+random(__view_get( e__VW.WView, 0 )),__view_get( e__VW.YView, 0 )+random(__view_get( e__VW.HView, 0 )),Floor)
{
if place_meeting(x-32,y,Floor) and place_meeting(x+32,y,Floor) and place_meeting(x,y-32,Floor) and place_meeting(x,y+32,Floor)
instance_create(x+random(32),y+random(32),WindNight)
}
}

if area = 1
{
with instance_nearest(__view_get( e__VW.XView, 0 )+random(__view_get( e__VW.WView, 0 )),__view_get( e__VW.YView, 0 )+random(__view_get( e__VW.HView, 0 )),Floor)
{
if place_meeting(x-32,y,Floor) and place_meeting(x+32,y,Floor) and place_meeting(x,y-32,Floor) and place_meeting(x,y+32,Floor)
instance_create(x+random(32),y+random(32),Wind)
}
}
if area = 2
{
alarm[0] = 1+random(120)
with instance_nearest(__view_get( e__VW.XView, 0 )+random(__view_get( e__VW.WView, 0 )),__view_get( e__VW.YView, 0 )+random(__view_get( e__VW.HView, 0 )),Floor)
instance_create(x+random(24)+8,y+random(24)+8,Drip)
}
if area = 3
{
alarm[0] = 1
repeat(3)
instance_create(__view_get( e__VW.XView, 0 )+random(__view_get( e__VW.WView, 0 )*2)-__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+random(__view_get( e__VW.HView, 0 )*2)-__view_get( e__VW.HView, 0 )/2,RainDrop)
}

if area = 4 or area = 103
{
with instance_nearest(__view_get( e__VW.XView, 0 )+random(__view_get( e__VW.WView, 0 )),__view_get( e__VW.YView, 0 )+random(__view_get( e__VW.HView, 0 )),Floor)
instance_create(x+random(24)+8,y+random(24)+8,CaveSparkle)
}
if area = 102
{
alarm[0] = 1+random(120)
with instance_nearest(__view_get( e__VW.XView, 0 )+random(__view_get( e__VW.WView, 0 )),__view_get( e__VW.YView, 0 )+random(__view_get( e__VW.HView, 0 )),Floor)
{with instance_create(x+random(24)+8,y+random(24)+8,Drip)
sprite_index = sprCheeseDrip}
}

if area = 5 || area = 107
{

alarm[0] = 2
instance_create(__view_get( e__VW.XView, 0 )+random(__view_get( e__VW.WView, 0 )*2)-__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+random(__view_get( e__VW.HView, 0 )*2)-__view_get( e__VW.HView, 0 )/2,SnowFlake)

if random(50) < 1
{
if instance_exists(Player){
with Player{ if race != 8 and race != 5{
with instance_create(x,y,Breath)
image_xscale = other.right}}
}
}
}

}

