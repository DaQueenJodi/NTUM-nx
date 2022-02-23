if instance_exists(Player){
Player.kills +=  1;

if Player.race == 17
{
	scrDrop(0,3);
}

if Player.ultra_got[50]==1{//Sheep Ultra B Just A Sheep
    if Player.justAsheep && instance_number(enemy)<BackCont.enemiesInStartLevel*0.7//if70% left enemies will notice you
    {
        Player.justAsheep=false;
        instance_create(x-5,y-16,Notice);
        instance_create(x+5,y-16,Notice);
    }
} else if (Player.justAsheep && instance_number(enemy)<BackCont.enemiesInStartLevel*0.9) {
    Player.justAsheep = false;
    instance_create(x-5,y-16,Notice);
    instance_create(x+5,y-16,Notice);
}

}
else{
BackCont.kills += 1
UberCont.ctot_kill[UberCont.race] += 1
}

if instance_number(enemy) <= 2
{
if instance_exists(Player)
{
if Player.ultra_got[16]
Player.meltingd=object_index;
}

snd_play(sndLastEnemy)
//if MorphMe{
//with instance_create(x,y,Corpse)
//{visible=false;}//the last enemy is always a corpse so that the game knows to go to the next lvl
//}
}
if object_index!=SnowTank && object_index!=InvertedSnowTank && object_index!=GoldSnowTank && 
!instance_exists(Portal) && instance_number(enemy) <2 && instance_number(becomenemy) = 0 and !instance_exists(Menu) and !instance_exists(RadMaggotChest) and !instance_exists(BecomeScrapBoss) and instance_exists(Player) and !instance_exists(GenCont)
{MorphMe=false;}

if!(MorphMe){

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

// random pitch between 0.85 and 1.15, which probably matches how the real game handles death noises
// if you dont believe me then boot up unmodded v99 and kill rats or crows and listen closely
snd_play(snd_dead, 0.15);
}
//else if instance_exists(Corpse)
//Corpse.alarm[0]=1;//spawn a portal?

Sleep(15+size*15)
if instance_exists(Player)
{
if Player.race = 4 && raddrop!=0
raddrop += 1

if Player.race=25
raddrop=round(raddrop*0.5);

if Player.ultra_got[15]//POWER OVERWHELMING! melting c ultra
raddrop +=2;
if Player.ultra_got[77]//business hog prosperity
raddrop+=1;

if Player.crown = 7
raddrop=round(raddrop*0.65);

if Player.crown = 15
raddrop=round(raddrop*0.19);

if Player.crown = 17
raddrop=floor(raddrop*0.06);

}

if UberCont.opt_gamemode = 9//easy mode
{
raddrop*=2;
}

scrRaddrop();

//Mutations
if instance_exists(Player)
{

if Player.race=25//Mutation smith is op
{

//SOME KILLS REGENERATE AMMO
    if Player.skill_got[6] = 1 and random(13) < 3
    {
    
    with instance_create(Player.x,Player.y-8,HealFX)
    {
    sprite_index=sprLuckyShot;
    }
    
    var wepammo = Player.wep_type[Player.wep]
    if Player.bwep!=0
    var bwepammo = Player.wep_type[Player.bwep]
    else
    var bwepammo=choose(1,2,3,4,5);
	if Player.cwep!=0
    var cwepammo = Player.wep_type[Player.cwep]
    else
    var cwepammo=choose(wepammo,bwepammo);
    
    //melee
    if wepammo=0
    wepammo=choose(1,2,3,4,5);
    
    if bwepammo=0
    bwepammo=choose(1,2,3,4,5);
	
	if cwepammo=0
    cwepammo=choose(1,2,3,4,5);
    
    type = choose(1,2,3,4,5,
	wepammo,wepammo,wepammo,wepammo,
	bwepammo,bwepammo,
	cwepammo,cwepammo)
    
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
    with Player
    {
    reload *=0.565//40%
    breload *=0.565//40%
    triggerfinger=2;//Shine weapon when trigger fingers is working
    }
    }
    
    //RAGE
    if Player.skill_got[28]
    {
    with Player
    {
    if race=25//doctor
    rage+=1.25
    else
    rage+=1;
    if rage>365
    rage=365;
    
    
    }
    }



}
else
{


//SOME KILLS REGENERATE AMMO
    if Player.skill_got[6] = 1 and random(14) < 3
    {
    var wepammo = Player.wep_type[Player.wep]
    if Player.bwep!=0
    var bwepammo = Player.wep_type[Player.bwep]
    else
    var bwepammo=choose(1,2,3,4,5);
	if Player.cwep!=0
    var cwepammo = Player.wep_type[Player.cwep]
    else
    var cwepammo=choose(wepammo,bwepammo);
    
    //melee
    if wepammo=0
    wepammo=choose(1,2,3,4,5);
    
    if bwepammo=0
    bwepammo=choose(1,2,3,4,5);
	
	if cwepammo=0
    cwepammo=choose(1,2,3,4,5);
    
    type = choose(1,2,3,4,5,
	wepammo,wepammo,wepammo,wepammo,
	bwepammo,bwepammo,
	cwepammo,cwepammo)
    
    Player.ammo[type] += round(Player.typ_ammo[type]/2)
    if Player.ammo[type] > Player.typ_amax[type]
    Player.ammo[type] = Player.typ_amax[type]
    
    with instance_create(Player.x,Player.y-8,HealFX)
    {
    sprite_index=sprLuckyShot;
    }
    
    
    dir = instance_create(x,y,PopupText)
    dir.mytext = "+"+string(round(Player.typ_ammo[type]/2))+" "+string(Player.typ_name[type])
    if Player.ammo[type] = Player.typ_amax[type]
    dir.mytext = "MAX "+string(Player.typ_name[type])
    }
    
    BloodLust();
    
    //TRIGGER FINGERS
    if Player.skill_got[24]
    {
    with Player
    {
    reload *=0.6//40%
    breload *=0.6//40%
    triggerfinger=2;//Shine weapon when trigger fingers is working
    }
    }
    
    //RAGE
    if Player.skill_got[28]
    {
    with Player
    {rage+=1;
    if rage>340
    rage=340;
    }
    }
    
    //YOU?
    if Player.loops > 0 && random(25000)<1
    instance_create(x,y,You);
    
}
    
    if(Player.ultra_got[18]==1){//PLANT ULTRA B KILLER
    if place_meeting(x,y,Tangle)
    {
    instance_create(x,y,Sapling);
    }
    }
    
    if Player.ultra_got[33]==1 //Chicken Ultra A harder to kill
    {
    with Player
    {
        if my_health <= 0
        {
        if race = 9 and bleed < 150
        {
            if bleed>0{
            bleed-=30;
            }
        }
        
        }
    }
    }

    if UberCont.opt_gamemode=11//GUN GAME
        {
            with Player
            {
            do{
                wep=irandom(maxwep);
                }until(wep!=69&&wep!=0&& wep!=298)//no oops gun or no wep or golden oops
                
                if race=7//roids
                {
                    do{
                    bwep=irandom(maxwep);
                    }until(bwep!=69&&bwep!=0&&wep!=298)//no oops gun
                }
                
                if ammo[wep_type[wep]] < typ_ammo[wep_type[wep]]*3
                {ammo[wep_type[wep]]+=typ_ammo[wep_type[wep]]*3;}
                if rad<20
                rad=20;
            scrWeaponHold();
            }
        }    

}

