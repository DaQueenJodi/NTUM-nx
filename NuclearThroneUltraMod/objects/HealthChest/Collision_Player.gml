if !instance_exists(GenCont)
{
num = 4
if Player.skill_got[9] = 1
num = 8

//Unlock chicken
scrUnlockCharacter(9,"FOR OPENING UP A BIG HP CHEST")

instance_create(x,y,HealFX)

instance_destroy()

if other.race==9 || other.race=12//Chicken & Yung Cuz maxhealth regain
{
if other.maxhealth<8 || (other.skill_got[1]==1&&other.maxhealth<12)
{
other.maxhealth+=2;
if other.skill_got[1]==1//rhino skin
{
if other.maxhealth>12
other.maxhealth=12;
}
else if other.maxhealth>8
other.maxhealth=8;
}
}

other.my_health += num
if other.my_health > other.maxhealth
other.my_health = other.maxhealth


dir = instance_create(x,y,PopupText)
dir.mytext = "+"+string(num)+" HP"
if other.my_health = other.maxhealth
dir.mytext = "MAX HP"

snd_play(sndHealthChest)
instance_destroy()
}


