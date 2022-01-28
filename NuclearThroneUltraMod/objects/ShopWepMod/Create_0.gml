image_speed=0;

instance_create(x,y,ShopSelector);

drawx = x
drawy = y

if instance_exists(Player)
{
if Player.skill_got[5]
{
txt = "WEAPON MOD#RADS: 435";
cost=435;
}
else
{
txt = "WEAPON MOD#RADS: 580";
cost=580;
}
}
else
{
txt = "WEAPON MOD#RADS: 580";
cost=580;
}

