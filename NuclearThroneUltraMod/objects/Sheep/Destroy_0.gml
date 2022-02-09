scrDrop(2,0)

//NOW SOME ENEMY CODE
with instance_create(x,y,Corpse)
{
size = other.size
mask_index = other.mask_index
motion_add(other.direction,other.speed)
speed += max(0,-other.my_health/5)
sprite_index = other.spr_dead
image_xscale = other.right

if instance_exists(Player)
{
//if Player.ultra_got[50]
speed +=1

if Player.skill_got[20] = 1
{
speed += 9
if Player.race=25
speed+=1;
}

}
if speed > 16
speed = 16
if size > 0
speed /= size


}

snd_play(snd_dead)

Sleep(20+size*15)
if instance_exists(Player)
{
if Player.race = 4
raddrop += 1

if Player.race=13
scrUnlockBSkin(13,"FOR CANNIBALISM",0);

}

do {if raddrop > 15
{raddrop -= 10
with instance_create(x,y,BigRad)
{motion_add(other.direction,other.speed)
motion_add(random(360),random(other.raddrop/2)+3)
repeat(speed)
speed *= 0.9}}
}
until raddrop <= 15

repeat(raddrop)
{
with instance_create(x,y,Rad)
{motion_add(other.direction,other.speed)
motion_add(random(360),random(other.raddrop/2)+3)
repeat(speed)
speed *= 0.9}
}

//Mutations
if instance_exists(Player)
{
//SOME KILLS REGENERATE AMMO
    if Player.skill_got[6] = 1 and random(10) < 3
    {
    type = choose(1,2,3,4,5)
    
    Player.ammo[type] += round(Player.typ_ammo[type]/2)
    if Player.ammo[type] > Player.typ_amax[type]
    Player.ammo[type] = Player.typ_amax[type]
    
    
    dir = instance_create(x,y,PopupText)
    dir.mytext = "+"+string(round(Player.typ_ammo[type]/2))+" "+string(Player.typ_name[type])
    if Player.ammo[type] = Player.typ_amax[type]
    dir.mytext = "MAX "+string(Player.typ_name[type])
    }
    
    BloodLust();
    
    //TRIGGER FINGERS
    if Player.skill_got[24]
    {
    Player.reload -=10;
    Player.breload -=10;
    Player.triggerfinger=2;//Shine weapon when trigger fingers is working
    }
    
    if(Player.ultra_got[18]==1){//PLANT ULTRA B KILLER
    if place_meeting(x,y,Tangle)
    {
    instance_create(x,y,Sapling);
    }
    }
    
    if Player.ultra_got[33]==1 //Chicken Ultra A harder to kill
    {
    if Player.my_health <= 0
    {
    if Player.race = 9 and Player.bleed < 150
    {
        if Player.bleed>0{
        Player.bleed-=30;
        }
    }
    
    }
    }
    
}

