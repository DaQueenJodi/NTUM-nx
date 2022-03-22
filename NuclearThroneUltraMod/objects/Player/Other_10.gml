/// @description ROGUE BLAST ARMOUR
with instance_create(x,y,RogueExplosion)
{team=2;}

if ultra_got[86]//SUPER BLAST ARMOUR
{


var randir=random(360);
repeat(3)
{

with instance_create(x+lengthdir_x(16,randir),y+lengthdir_y(16,randir),RogueExplosion)
{team=2;}

randir+=360/3;
}

randir=random(360);
repeat(3)
{

with instance_create(x+lengthdir_x(32,randir),y+lengthdir_y(32,randir),RogueExplosion)
{team=2;}

randir+=360/3;
}

}
if ultra_got[88] == 1
{
	var angl = random(360);
	var am = 6;
	var anglStep = 360 / am;
	repeat(am)
	{
		with instance_create(x,y,Rad)
		{
			motion_add(angl,5);
		}
		angl += anglStep;
	}	
}

snd_play(sndIDPDNadeExplo);
