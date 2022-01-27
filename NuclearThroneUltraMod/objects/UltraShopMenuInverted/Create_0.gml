image_speed=0;

instance_create(x,y,ShopSelector);

drawx = x
drawy = y

if instance_exists(Player)
{
if Player.skill_got[5]
{
txt = "INVERTED WORLD#RADS: 450";
cost=450;
}
else
{
txt = "INVERTED WORLD#RADS: 600";
cost=600;
}
}
else
{
txt = "INVERTED WORLD#RADS: 600";
cost=600;
}

canspawn=true;

