image_speed=0;

instance_create(x,y,ShopSelector);

drawx = x
drawy = y

if instance_exists(Player)
{
if Player.skill_got[5]
{
txt = "AMMO PICKUP#RADS: 30";
cost=30;
}
else
{
txt = "AMMO PICKUP#RADS: 40";
cost=40;
}
}
else
{
txt = "AMMO PICKUP#RADS: 40";
cost=40;
}

