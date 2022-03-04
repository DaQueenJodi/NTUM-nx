/// @description popo

if instance_exists(Player) and !instance_exists(GenCont) and !instance_exists(LevCont)
{
//chance that idpd stop spawning
if random(3+Player.loops)>1
alarm[1] = 1000//500

if  (( (Player.loops >= 1 and instance_number(Grunt) < 3+Player.loops and Player.area != 100) || Player.crown=10) && instance_number(enemy)>3)
{
repeat(Player.loops)    
instance_create(Player.x,Player.y,IDPDSpawn)        
if Player.crown==10//crown of difficulty
{
	repeat(1+Player.loops) 
	instance_create(Player.x,Player.y,IDPDSpawn)
}
if Player.crown==16//crown of popo
{
	repeat(2+Player.loops) 
	instance_create(Player.x,Player.y,IDPDSpawn)
}
}

}

