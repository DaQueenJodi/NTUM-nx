time = 0

team =2
p = 0
friction = 0.45



with projectile
{
var homing;
homing= false;
}

wave=0;

if instance_exists(Player)
{

if(Player.ultra_got[7]==1)
{
time += 60
}
//else{
//Player.visible=false;}

if Player.ultra_got[6]=1
snd_play(sndCrystalJuggerNaut)
else
snd_play(sndCrystalShield)


if Player.bskin=2
{
sprite_index=sprShieldC
spr_disappear=sprShieldCDisappear;
}
else if Player.bskin=1
{
sprite_index=sprShieldB
spr_disappear=sprShieldBDisappear;
}
else
{
sprite_index=sprShield
spr_disappear=sprShieldDisappear;
}
}

