image_speed=0;

instance_create(x,y,ShopSelector);

drawx = x
drawy = y

if instance_exists(Player)
{
if Player.skill_got[5]
{
txt = "WEAPON CHEST#RADS: 52";
cost=52;
}
else
{
txt = "WEAPON CHEST#RADS: 70";
cost=70;
}
}
else
{
txt = "WEAPON CHEST#RADS: 70";
cost=70;
}




