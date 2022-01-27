image_speed=0;

instance_create(x,y,ShopSelector);

drawx = x
drawy = y

if instance_exists(Player)
{
if Player.skill_got[5]
{
txt = "MEDIUM WEAPON CHEST#RADS: 105";
cost=105;
}
else
{
txt = "MEDIUM WEAPON CHEST#RADS: 140";
cost=140;
}
}
else
{
txt = "MEDIUM WEAPON CHEST#RADS: 140";
cost=140;
}


