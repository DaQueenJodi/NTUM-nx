///Anything that drops rads runs this

if instance_exists(Player)
{
if Player.ultra_got[81]//Horror Stalker
{
repeat(raddrop*0.7)//0.6 in real game
{

with instance_create(x,y,HorrorBullet)
{
motion_add(random(360),8)
image_angle = direction
team = Player.team
bskin=Player.bskin}

}

}

}



do {if raddrop > 12//15
{raddrop -= 10
with instance_create(x,y,BigRad)
{motion_add(other.direction,other.speed)
motion_add(random(360),random(other.raddrop*0.5)+3)
repeat(speed)
speed *= 0.9}}
}
until raddrop <= 15

repeat(raddrop)
{
with instance_create(x,y,Rad)
{motion_add(other.direction,other.speed)
motion_add(random(360),random(other.raddrop*0.5)+3)
repeat(speed)
speed *= 0.9}
}
