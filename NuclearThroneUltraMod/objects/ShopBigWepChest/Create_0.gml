image_speed=0;

instance_create(x,y,ShopSelector);

drawx = x
drawy = y


if instance_exists(Player)
{
if Player.skill_got[5]
{
txt = "BIG WEAPON CHEST#RADS: 131";
cost=131;
}
else
{
txt = "BIG WEAPON CHEST#RADS: 175";
cost=175;
}
}
else
{
txt = "BIG WEAPON CHEST#RADS: 175";
cost=175;
}




