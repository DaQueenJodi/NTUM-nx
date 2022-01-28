if instance_exists(Player)
{
x=Player.x;
y=Player.y;
}
image_xscale+=0.6;
image_yscale+=0.6;

image_alpha-=0.06;

if image_xscale>10
instance_destroy();

