image_speed=0;

instance_create(x,y,ShopSelector);

drawx = x
drawy = y

if instance_exists(Player)
{
if Player.skill_got[5]
{
txt = "BIG HP CHEST#RADS: 83";
cost=83;
}
else
{
txt = "BIG HP CHEST#RADS: 110";
cost=110;
}
}
else
{
txt = "BIG HP CHEST#RADS: 110";
cost=110;
}

