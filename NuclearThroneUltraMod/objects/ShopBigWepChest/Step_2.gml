if instance_exists(ShopWheel)
{
x=ShopWheel.x;
y=ShopWheel.y;
}
else
instance_destroy();

if instance_exists(Player)
{
if place_meeting(x,y,ShopSelector)
{
image_index=1;
if KeyCont.key_spec[Player.p] != 1 && KeyCont.key_spec[Player.p] != 2
{
    if (HogSpend())
	{
    instance_create(Player.x,Player.y,BigWeaponChest);
    instance_create(Player.x,Player.y,WallBreak);
    }

}
}
else
image_index=0;


}
/*
if place_meeting(x,y,Cursor)
{
image_index=1;
KeyCont.key_fire[Player.p] = 1
instance_create(Player.x,Player.y,AmmoPickup);
}
else
image_index=0;

/* */
/*  */
