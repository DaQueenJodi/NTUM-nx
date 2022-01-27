if RogueIDPD=true
{

with instance_create(x,y,IDPDVan)
{
RogueIDPD=other.RogueIDPD;
spr_idle = sprRogueVanOpen
spr_walk = sprRogueVanDrive
spr_hurt = sprRogueVanHurt
spr_dead = sprRogueVanDead
}

}
else
instance_create(x,y,IDPDVan)


/*dir = choose(1,1,1,1,1,2,2,3,3,3,4,4,4);//1,1,2,3,4


if instance_exists(Player)
{
if(Player.loops<1&&Player.area<2)//no shielders in desert start
{
dir = choose(1,1,1,1,1,1,3,3,4);//less chance inspector
}
}




if dir = 1
{
repeat(2)
{
with instance_create(x+random(4)-2,y+random(4)-2,Grunt)
{
if instance_exists(Player)
motion_add(point_direction(x,y,Player.x,Player.y)+random(90)-45,4)
else
motion_add(random(360),4)
}
}}
if dir = 2
{
with instance_create(x+random(4)-2,y+random(4)-2,Shielder)
{
if instance_exists(Player)
motion_add(point_direction(x,y,Player.x,Player.y)+random(90)-45,4)
else
motion_add(random(360),4)
}
}
if dir = 3
{
with instance_create(x+random(4)-2,y+random(4)-2,Inspector)
{
if instance_exists(Player)
motion_add(point_direction(x,y,Player.x,Player.y)+random(90)-45,4)
else
motion_add(random(360),4)
}
}
if dir = 4
{
with instance_create(x+random(4)-2,y+random(4)-2,SegwayPopo)
{
if instance_exists(Player)
motion_add(point_direction(x,y,Player.x,Player.y)+random(90)-45,4)
else
motion_add(random(360),4)
}
}


/* */
/*  */
