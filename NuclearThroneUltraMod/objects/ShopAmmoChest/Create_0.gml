image_speed=0;

instance_create(x,y,ShopSelector);

drawx = x
drawy = y


if instance_exists(Player)
{
if Player.skill_got[5]
{
txt = "AMMO CHEST#RADS: 75";
cost=75;
}
else
{
txt = "AMMO CHEST#RADS: 100";
cost=100;
}
}
else
{
txt = "AMMO CHEST#RADS: 100";
cost=100;
}

