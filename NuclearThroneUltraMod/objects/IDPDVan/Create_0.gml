raddrop = 9
maxhealth = 230
meleedamage = 20
size = 4
RogueIDPD=false;

event_inherited()

team=0;
spr_idle = sprVanOpen
spr_walk = sprVanDrive
spr_hurt = sprVanHurt
spr_dead = sprVanDead


snd_hurt = sndVanHurt

//behavior
walk = 0

idle=true;

if instance_exists(Player)
{
if Player.x>x//right
{right=1
motion_add(0,8);
}
else//left
{right=-1;
motion_add(180,8);}

}
friction=4;
alarm[3]=45;

ang = random(360);



