image_speed=0;

instance_create(x,y,ShopSelector);

drawx = x
drawy = y

if instance_exists(Player)
{
if Player.skill_got[5]
{
txt = "DAMAGE ON SCREEN#RADS: 184";
cost=184;
}
else
{
txt = "DAMAGE ON SCREEN#RADS: 245";
cost=245;
}
}
else
{
txt = "DAMAGE ON SCREEN#RADS: 245";
cost=245;
}

