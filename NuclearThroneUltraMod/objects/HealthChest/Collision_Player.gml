if !instance_exists(GenCont)
{
num = 4
if Player.skill_got[9] = 1
num = 8

//Unlock chicken
scrUnlockCharacter(9,"FOR OPENING UP A BIG HP CHEST")

instance_create(x,y,HealFX)

instance_destroy()

var  maxHpIncrease = 2;
with other {
	//OVERHEAL
	my_health += other.num;
	/*
	if my_health + other.num <= maxhealth
		my_health += other.num
	else// if other.crown != 2
		my_health = max(my_health,maxhealth);
	*/
	if race==9 || race=12//Chicken maxhealth regain
	{
		var targetHealth = 8;
		if skill_got[1] == 1//Rhino skin
			targetHealth += 4;
		if skill_got[33]//Glass arm cannon
			targetHealth -= 2;
		if skill_got[9] 
			maxHpIncrease *= 2;
	    if maxhealth<targetHealth
	    {
		    maxhealth = min(maxhealth + maxHpIncrease,targetHealth);
	    }
	}
}



dir = instance_create(x,y,PopupText)
dir.mytext = "+"+string(num)+" HP"
if other.my_health = other.maxhealth
dir.mytext = "MAX HP"
else if other.my_health > other.maxhealth
dir.mytext = "+"+string(num)+" HP#OVERHEAL!"

snd_play(sndHealthChest)
instance_destroy()
}


