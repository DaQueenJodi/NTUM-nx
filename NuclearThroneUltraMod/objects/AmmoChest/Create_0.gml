if instance_exists(Player)
{
if random(4) < 1 && !place_meeting(x,y,Player)
instance_change(AmmoChestMystery,true)

}
else if random(4) < 1
instance_change(AmmoChestMystery,true)


event_inherited()
mediumchest=0;
if Player.ultra_got[26]==1
{
mediumchest=1;
}
if mediumchest==1
sprite_index=sprMediumAmmoChest;

