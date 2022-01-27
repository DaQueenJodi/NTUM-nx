image_speed=0;

instance_create(x,y,ShopSelector);

drawx = x
drawy = y

if instance_exists(Player)
{
if Player.skill_got[5]
{
txt = "HP PICKUP#RADS: 49";
cost=49;
}
else
{
txt = "HP PICKUP#RADS: 65";
cost=65;
}
}
else
{
txt = "HP PICKUP#RADS: 65";
cost=65;
}

