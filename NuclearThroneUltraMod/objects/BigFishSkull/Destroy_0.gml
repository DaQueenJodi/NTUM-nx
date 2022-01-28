event_inherited()

ang = random(360)

repeat(10)
{with instance_create(x,y,Dust)
motion_add(other.ang,3)
ang += 36}

with Player
oasisskip=-1;

//with BanditBoss
//oasis=false;

with WantBoss
instance_destroy();

