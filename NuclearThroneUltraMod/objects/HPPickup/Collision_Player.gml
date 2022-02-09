num = 2
if Player.skill_got[9] = 1
{

if Player.race=25 && random(5)<3//mutation smith/doctor
num = 5
else
num = 4;

}



instance_create(x,y,HealFX)

//RUSH CROWN
if Player.crown = 4
num += 1

snd_play(sndHealthPickup)
instance_destroy()
if other.my_health + num <= other.maxhealth
other.my_health += num
else// if other.crown != 2
other.my_health = max(other.my_health,other.maxhealth);


dir = instance_create(x,y,PopupText)
dir.mytext = "+"+string(num)+" HP"
if other.my_health = other.maxhealth
dir.mytext = "MAX HP"
else if other.my_health > other.maxhealth
dir.mytext = "OVER MAX HP"

instance_create(x,y,SmallChestPickup)


