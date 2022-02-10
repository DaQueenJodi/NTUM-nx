alarm[0]=6;
c1 = make_color_rgb(56,0,106);
c2 = make_color_rgb(145,148,255);

if instance_exists(AssassinBoss)
{
	with AssassinBoss {
		other.assx = x;
		other.assy = y;
	}
} else {
	instance_destroy();
}