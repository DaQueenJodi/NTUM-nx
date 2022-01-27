if instance_number(Floor) > goal
{
if point_distance(x,y,10016,10016) > 48
{
if instance_exists(Player){
if (Player.area == 3 and Player.subarea == 3){//#safe spawns 4 big dog
Player.x=x+16;
Player.y=y+16;
}
instance_create(x,y,Floor)
if Player.race=22
{
if Player.area!=104 && Player.area!=100 && !instance_exists(RogueAmmoChest)
instance_create(x+16,y+16,RogueAmmoChest)
}
else if Player.area!=104 && Player.race!=25//Not mutation smith
instance_create(x+16,y+16,RadChest)
}
}
instance_destroy()
}
else
{
scrMakeFloor()

with GenCont
alarm[0] = 3
with GenCont
alarm[2] = 2

with MenuGen
alarm[1] = 3
}

