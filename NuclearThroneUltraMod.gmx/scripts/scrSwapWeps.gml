//SWAP DA WEPS
var twep, treload, twkick, twepflip, twepangle, tcan_shoot, tcurse,twepmod1,twepmod2,twepmod3,twepmod4;//temporary wep

if ultra_got[31] && cwep!=0//robots third weapon robot is cool very cool
{
//save primary in temporary A B C A
twkick=wkick
tcurse=curse
tcan_shoot=can_shoot
twepflip=wepflip
twepangle=wepangle
treload=reload
twep=wep
//TMODIFIERS!
twepmod1=wepmod1;
twepmod2=wepmod2;
twepmod3=wepmod3;
twepmod4=wepmod4;



//primary becomes secondary B B C A
wkick=bwkick
curse=bcurse
can_shoot=bcan_shoot
wepflip=bwepflip
wepangle=bwepangle
reload=breload
wep=bwep
//MODIFIERS!
wepmod1=bwepmod1;
wepmod2=bwepmod2;
wepmod3=bwepmod3;
wepmod4=bwepmod4;


//secondary becomes tertiary B C C A
bwkick=cwkick
bcurse=ccurse
bcan_shoot=ccan_shoot
bwepflip=cwepflip
bwepangle=cwepangle
breload=creload
bwep=cwep
//BMODIFIERS!
bwepmod1=cwepmod1;
bwepmod2=cwepmod2;
bwepmod3=cwepmod3;
bwepmod4=cwepmod4;


//tertiary becomes temporary B C A A
cwkick=twkick
ccurse=tcurse
ccan_shoot=tcan_shoot
cwepflip=twepflip
cwepangle=twepangle
creload=treload
cwep=twep
//CMODIFIERS!
cwepmod1=twepmod1;
cwepmod2=twepmod2;
cwepmod3=twepmod3;
cwepmod4=twepmod4;

}
else//regular swapping
{
twep = wep
tcurse = curse
treload = reload
twkick = wkick
twepflip = wepflip
twepangle = wepangle 
tcan_shoot = can_shoot
//TMODIFIERS
twepmod1=wepmod1
twepmod2=wepmod2
twepmod3=wepmod3
twepmod4=wepmod4

wep = bwep
curse = bcurse
reload = breload
wkick = bwkick
wepflip = bwepflip
wepangle = bwepangle
can_shoot = bcan_shoot
//MODIFIERS!
wepmod1=bwepmod1;
wepmod2=bwepmod2;
wepmod3=bwepmod3;
wepmod4=bwepmod4;

bwkick = twkick
bcurse = tcurse
bcan_shoot = tcan_shoot
bwepflip = twepflip
bwepangle = twepangle
breload = treload
bwep = twep
//BMODIFIERS
bwepmod1=twepmod1;
bwepmod2=twepmod2;
bwepmod3=twepmod3;
bwepmod4=twepmod4;
}
clicked = 0

if reload > 0
can_shoot = 0
else
can_shoot = 1


if wep_type[wep] != 0 and wep != 24 and wep != 36 and wep != 53 && wep!=198 && wep!=222 && wep!=223//some melee exceptions
wepangle = 0
else if wepangle = 0
wepangle = choose(120,-120)

if bwep=201||bwep=202||cwep=201||cwep=202//SUPERHOT reset speeds
{
with projectile
{
if typ!=0&&object_index!=Flame&&object_index!=TrapFire&&object_index!=HotDrakeFlameCannon&&object_index!=HotDrakeSplitBall&&object_index!=Bolt&&object_index!=Splinter&&object_index!=UltraBolt
{
    if speed<8
    speed=8;
}
}
}

drawempty = 30
