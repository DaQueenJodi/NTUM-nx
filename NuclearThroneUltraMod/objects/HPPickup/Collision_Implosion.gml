if(instance_exists(Player)){
num = 2
if Player.skill_got[9] = 1
num = 4

instance_create(x,y,HealFX)

//RUSH CROWN
if Player.crown = 4
num += 1

instance_destroy()
Player.my_health += num
if Player.my_health > Player.maxhealth
Player.my_health = Player.maxhealth


dir = instance_create(x,y,PopupText)
dir.mytext = "+"+string(num)+" HP"
if Player.my_health = Player.maxhealth
dir.mytext = "MAX HP"

instance_create(x,y,SmallChestPickup)
}

