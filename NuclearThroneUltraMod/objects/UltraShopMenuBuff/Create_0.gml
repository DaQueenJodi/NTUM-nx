image_speed=0;

instance_create(x,y,ShopSelector);

drawx = x
drawy = y

if instance_exists(Player)
{
if Player.skill_got[5]
{
txt = "TEMPORARY BUFF#RADS: 195";
cost=195;
}
else
{
txt = "TEMPORARY BUFF#RADS: 260";
cost=260;
}
}
else
{
txt = "TEMPORARY BUFF#RADS: 260";
cost=260;
}

