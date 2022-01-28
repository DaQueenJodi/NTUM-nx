/// @description Horror Ultra B Anomaly
totalEnemyHealth=0;
with enemy
{
if object_index=IDPDVan
other.totalEnemyHealth+=floor(my_health*0.1)
else
other.totalEnemyHealth=other.totalEnemyHealth+my_health
}

//We've reached a new high set this as the maximum hp we found this level.
//if totalEnemyHealth>maxEnemyHealthInLevel
//maxEnemyHealthInLevel=totalEnemyHealth;

if totalEnemyHealth<140&&!instance_exists(GenCont)&&!instance_exists(LevCont)&&instance_exists(enemy)&&!instance_exists(becomenemy)
{
with enemy
my_health=0;

snd_play(sndHorrorPortal)
}
else
alarm[3]=10+random(30);




