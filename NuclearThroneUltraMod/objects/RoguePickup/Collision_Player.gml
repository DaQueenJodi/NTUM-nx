var num = 1;

if other.ultra_got[85]=1//ROGUE SUPER PORTAL STRIKE ULTRA
num+=1;

other.rogueammo+=num;
if other.rogueammo > other.rogueammomax
other.rogueammo = other.rogueammomax

dir = instance_create(x,y,PopupText)

if other.rogueammo = other.rogueammomax
dir.mytext = "MAX PORTALSTRIKE"
else
dir.mytext = "+"+string(num)+" PORTALSTRIKE"


snd_play(sndRogueCanister)
instance_destroy()

instance_create(x,y,SmallChestPickup)

/*
ang = random(360)
repeat(10)
{
with instance_create(x,y,Bullet1)
{motion_add(other.ang,12+random(4))
image_angle = direction
team =2}
ang += 36
}*/

/* */
/*  */
