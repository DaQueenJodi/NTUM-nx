image_speed=0;

instance_create(x,y,ShopSelector);

drawx = x
drawy = y



if instance_exists(Player)
{
if Player.skill_got[5]
{
txt = "ELITE WEAPON CHEST#RADS: 98";
cost=98;
}
else
{
txt = "ELITE WEAPON CHEST#RADS: 130";
cost=130;
}
}
else
{
txt = "ELITE WEAPON CHEST#RADS: 130";
cost=130;
}



