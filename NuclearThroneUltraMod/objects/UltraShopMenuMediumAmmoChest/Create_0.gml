image_speed=0;

instance_create(x,y,ShopSelector);

drawx = x
drawy = y

if instance_exists(Player)
{
if Player.skill_got[5]
{
txt = "MEDIUM AMMO CHEST#RADS: 60";
cost=60;
}
else
{
txt = "MEDIUM AMMO CHEST#RADS: 80";
cost=80;
}
}
else
{
txt = "MEDIUM AMMO CHEST#RADS: 80";
cost=80;
}

