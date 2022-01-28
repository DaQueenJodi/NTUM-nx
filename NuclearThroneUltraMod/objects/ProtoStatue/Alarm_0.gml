if rad > 30 and instance_exists(Player)//rad 10
{if instance_number(Grunt) <= Player.loops and !instance_exists(Portal)
instance_create(x,y,IDPDSpawn)
alarm[0] = 400
}
else
alarm[0] = 300

