with instance_create(x,y,ChestOpen)
{

if other.curse = 1
sprite_index = sprCursedChestOpen
else
sprite_index = sprWeaponChestOpen
}
instance_create(x,y,FXChestOpen)

scrChestOasis();

