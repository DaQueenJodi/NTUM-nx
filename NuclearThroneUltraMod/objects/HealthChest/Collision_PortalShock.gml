repeat(2)
instance_create(x,y,HPPickup)
snd_play(sndHealthChest)
//I show mercy unlike Vlambeer
if instance_exists(Player){
    if Player.race==9//Chicken maxhealth regain
    {
    if Player.maxhealth<8 || (Player.skill_got[1]==1&&Player.maxhealth<12)
    {
    Player.maxhealth+=2;
    if Player.skill_got[1]==1//rhino skin
    {
    if Player.maxhealth>12
    Player.maxhealth=12;
    }
    else if Player.maxhealth>8
    Player.maxhealth=8;
    }
    }
}

instance_destroy()

