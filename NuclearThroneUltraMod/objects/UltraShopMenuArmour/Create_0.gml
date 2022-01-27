image_speed=0;

instance_create(x,y,ShopSelector);

drawx = x
drawy = y

if instance_exists(Player)
{
if Player.skill_got[5]
{
txt = "ARMOUR#RADS: 53";
cost=53;
}
else
{
txt = "ARMOUR#RADS: 70";
cost=70;
}
}
else
{
txt = "ARMOUR#RADS: 70";
cost=70;
}

