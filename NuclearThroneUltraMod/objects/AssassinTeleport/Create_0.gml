alarm[0]=6;
c1 = make_color_rgb(56,0,106);
c2 = make_color_rgb(145,148,255);
xx1 = x + random_range(-16,16);
xx2 = x + random_range(-16,16);
xx3 = x + random_range(-16,16);
yy1 = y + random_range(-16,16);
yy2 = y + random_range(-16,16);
yy3 = y + random_range(-16,16);
if instance_exists(AssassinBoss)
{
	with AssassinBoss {
		other.assx = x;
		other.assy = y;
	}
} else {
	instance_destroy();
}