if instance_exists(Player)
{
if Player.crown = 5//crown of guns
argument1+=7;

if Player.skill_got[0] = 1//heavy heart
argument1=(argument1*2.1)+2;

argument1 *= 1.13;// adjusting for inflation ©2016
argument0 *=1.15;
//calculate need

if Player.crown = 13//no rads higher droprate crown
{
argument1 *= 1.2;
argument0 *=1.2;
}

if UberCont.opt_gamemode=2{
argument1+=100
argument0+=100}

if instance_exists(Player)
{
if Player.loops>0
argument0*=0.9;

if Player.loops>1
argument0*=0.9;

if Player.loops>2
argument0*=0.8;

if Player.loops>3
argument0*=0.8;
}

if instance_exists(TemporaryBuff)
{
argument0*=2;
argument1*=2;
}

need = 0

if Player.ammo[Player.wep_type[Player.wep]] < Player.typ_amax[Player.wep_type[Player.wep]]*0.2
need += 0.75
else if Player.ammo[Player.wep_type[Player.wep]] > Player.typ_amax[Player.wep_type[Player.wep]]*0.6
need += 0.1 else need += 0.5

if Player.bwep = 0 need += 0.5
else if Player.ammo[Player.wep_type[Player.bwep]] < Player.typ_amax[Player.wep_type[Player.bwep]]*0.2
need += 0.75
else if Player.ammo[Player.wep_type[Player.bwep]] > Player.typ_amax[Player.wep_type[Player.bwep]]*0.6
need += 0.1 else need += 0.5


if (Player.ultra_got[1]==1)//FISH ULTRA A Confiscate
    {
        if (random(100) < 10+(Player.skill_got[4]*0.5)+(Player.skill_got[28]*(Player.rage*0.0004)) )//rage=0.001
        {
        if random(Player.maxhealth) > Player.my_health and random(3) < 2 and Player.crown != 2
        instance_create(x+random(4)-2,y+random(4)-2,HealthChest)
        else if Player.crown != 5
        instance_create(x+random(4)-2,y+random(4)-2,AmmoChest)
        exit;
        }
        else if random(100) < 10*(Player.skill_got[4]*0.6)+(Player.skill_got[28]*(Player.rage*0.0004)) //rage=0.001
        {
        instance_create(x+random(4)-2,y+random(4)-2,WeaponChest);
        exit;
        }
    }
//drop items
if random(100) < argument0+2*(need+Player.skill_got[4]*0.5 +(Player.ultra_got[39]*instance_number(Ally)*0.3)+(Player.skill_got[28]*(Player.rage*0.0004)) )//0.6 before rabbit paw nerf
{//0.3 for each ally Rebel has REBEL ULTRA C?

if random(Player.maxhealth) > Player.my_health and random(3) < 2 and Player.crown != 2
instance_create(x+random(4)-2,y+random(4)-2,HPPickup)
else if Player.crown != 5
instance_create(x+random(4)-2,y+random(4)-2,AmmoPickup)
}
else if random(100) < argument1*(1+Player.skill_got[4]*0.5 +(Player.ultra_got[39]*instance_number(Ally)*0.3)+(Player.skill_got[28]*(Player.rage*0.0004)) )//rage=0.001
{
//drop weps
with instance_create(x+random(4)-2,y+random(4)-2,WepPickup)
{
scrWeapons()
scrDecideWep(0)
name = wep_name[wep]
type = wep_type[wep]
ammo = 50
curse = 0
sprite_index = wep_sprt[wep]
}

    

}
}
