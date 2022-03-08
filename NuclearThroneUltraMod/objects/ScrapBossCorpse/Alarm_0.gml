if !instance_exists(SurvivalWave)
if instance_number(enemy) = 0 and !instance_exists(Portal) and instance_number(becomenemy) = 0 and !instance_exists(Menu) and !instance_exists(RadMaggotChest) and !instance_exists(BecomeScrapBoss)
{
with instance_create(x,y,Portal)
type = 1
Sleep(100)
}

