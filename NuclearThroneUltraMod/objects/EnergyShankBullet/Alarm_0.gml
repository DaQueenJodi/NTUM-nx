if instance_exists(Player)
{
if Player.skill_got[17] = 1
snd_play(sndEnergyScrewdriverUpg)
else
snd_play(sndEnergyScrewdriver)
}
else
{snd_play(sndEnergyScrewdriver)}

instance_create(x,y,Dust)

if instance_exists(Player){
with instance_create(x+lengthdir_x((Player.skill_got[13]+Player.bettermelee)*10,point_direction(x,y,mouse_x,mouse_y)),y+lengthdir_y((Player.skill_got[13]+Player.bettermelee)*10,point_direction(x,y,mouse_x,mouse_y)),EnergyShank)
{
direction=random(360)
ang = direction
dmg = 4
longarms = 0
if instance_exists(Player)
longarms = (Player.skill_got[13]+Player.bettermelee)*3
image_angle = direction
motion_add(ang,2+longarms)
team = other.team
sleepRate=6;
}
}else{
with instance_create(x,y,EnergyShank)
{
direction=random(360)
ang = direction
dmg = 4
longarms = 0
if instance_exists(Player)
longarms = (Player.skill_got[13]+Player.bettermelee)*3
image_angle = direction
motion_add(ang,2+longarms)
team = other.team
sleepRate=6;
}}


alarm[0]=2;

