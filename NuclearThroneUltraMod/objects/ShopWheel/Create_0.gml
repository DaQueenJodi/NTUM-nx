image_speed=0;
//image_index=1;
instance_create(x,y,ShopAmmo);
instance_create(x,y,ShopHP);
instance_create(x,y,ShopWepChest);
instance_create(x,y,ShopBigWepChest);
instance_create(x,y,ShopBigGoldChest);
instance_create(x,y,ShopEliteWepChest);
instance_create(x,y,ShopWepMod);
instance_create(x,y,ShopAmmoChest);

if instance_exists(Player)
{
    if Player.ultra_got[78]
    {
    
    instance_create(x,y,UltraShopMenuArmour);
    instance_create(x,y,UltraShopMenuBigHPChest);
    instance_create(x,y,UltraShopMenuMediumWepChest);
    instance_create(x,y,UltraShopMenuMediumAmmoChest);
    instance_create(x,y,UltraShopMenuDamage);
    instance_create(x,y,UltraShopMenuInvulnerability);
    instance_create(x,y,UltraShopMenuInverted);
    instance_create(x,y,UltraShopMenuBuff);
    
    }
}

