if wep_type[wep] = 0
wepright = wepflip
else
wepright = right

if wep_type[bwep] = 0
bwepright = bwepflip
else
bwepright = right

if bwep != 0 and race != 7
draw_sprite_ext(wep_sprt[bwep],triggerfinger,x-right*2,y,1,bwepright,90+15*right,c_silver,1)

if ( wep_type[wep] = 3||wep==257 ) and (!(IsShielding)||(ultra_got[7]==1)) and wep != 18
{
lasx = x
lasy = y
lasd = 0
do {lasd += 1 lasx += lengthdir_x(2,point_direction(x,y,mouse_x,mouse_y)) lasy += lengthdir_y(2,point_direction(x,y,mouse_x,mouse_y))}
until position_meeting(lasx,lasy,Wall) or lasd > 1000

draw_sprite_ext(sprLaserSightPlayer,-1,x,y,point_distance(x,y,lasx,lasy)/2+2,1,point_direction(x,y,mouse_x,mouse_y),c_white,1)
}

if ultra_got[31]//draw robots third weapon on its back
{
draw_sprite_ext(wep_sprt[cwep],triggerfinger,x-right,y-2,image_xscale,bwepright,90+right*-15,c_white,1)

}
//DUAL WIELDING
if ultra_got[27]=1//copy primary
{

//first draw secondary on back of roids
draw_sprite_ext(wep_sprt[bwep],triggerfinger,x-right*4,y-2,image_xscale,-bwepright,90+right*30,c_white,1)

draw_sprite_ext(wep_sprt[bwep],triggerfinger,x+right,y-2,image_xscale,-bwepright,90+right*30,c_white,1)

twep=bwep;//save secondary in third wepslot
bwep=wep;//secondary slot will now be your primary
//bwepangle=wepangle;//angle

}
if race = 7 and bwep != 0
{if wep_type[bwep] = 3 and bwep != 18
{lasx = x
lasy = y-4
lasd = 0
do {lasd += 1 lasx += lengthdir_x(2,point_direction(x,y,mouse_x,mouse_y)) lasy += lengthdir_y(2,point_direction(x,y,mouse_x,mouse_y))}
until position_meeting(lasx,lasy,Wall) or lasd > 1000
draw_sprite_ext(sprLaserSightPlayer,-1,x,y-4,point_distance(x,y,lasx,lasy)/2+2,1,point_direction(x,y,mouse_x,mouse_y),c_white,1)
}draw_sprite_ext(wep_sprt[bwep],triggerfinger,x+lengthdir_x(-bwkick,point_direction(x,y,mouse_x,mouse_y)+(bwepangle*(1-wkick/20))),y-4+lengthdir_y(-bwkick,point_direction(x,y,mouse_x,mouse_y)+(bwepangle*(1-wkick/20))),1,-bwepright,point_direction(x,y,mouse_x,mouse_y)+(bwepangle*(1-wkick/20)),c_white,1)
if bwep = 63 || wep = 343//Blackhole/Dimension Generator
{
if can_shoot = 1 and ammo[wep_type[wep]] >= wep_cost[wep]{

draw_sprite_ext(sprBlackHoleGeneration,triggerfinger,x+lengthdir_x(-bwkick,point_direction(x,y,mouse_x,mouse_y)+(bwepangle*(1-wkick/20))),y-4+lengthdir_y(-bwkick,point_direction(x,y,mouse_x,mouse_y)+(bwepangle*(1-wkick/20))),1,-bwepright,point_direction(x,y,mouse_x,mouse_y)+(bwepangle*(1-wkick/20)),c_white,1)}}

}

if ultra_got[27]=1//copy primary
{
bwep=twep;//and return weapon
}
//DRAW DA GUNZ
if back = 1 and (!(IsShielding)||(ultra_got[7]==1)){
draw_sprite_ext(wep_sprt[wep],triggerfinger,x+lengthdir_x(-wkick,point_direction(x,y,mouse_x,mouse_y)+(wepangle*(1-wkick/20))),y+lengthdir_y(-wkick,point_direction(x,y,mouse_x,mouse_y)+(wepangle*(1-wkick/20))),1,wepright,point_direction(x,y,mouse_x,mouse_y)+(wepangle*(1-wkick/20)),c_white,1)

if wep = 63 || wep = 343//Blackhole/Dimension Generator
{
if can_shoot = 1 and ammo[wep_type[wep]] >= wep_cost[wep]{

draw_sprite_ext(sprBlackHoleGeneration,wave,x+lengthdir_x(-wkick,point_direction(x,y,mouse_x,mouse_y)+(wepangle*(1-wkick/20))),y+lengthdir_y(-wkick,point_direction(x,y,mouse_x,mouse_y)+(wepangle*(1-wkick/20))),1,wepright,point_direction(x,y,mouse_x,mouse_y)+(wepangle*(1-wkick/20)),c_white,1)
}}
}
if instance_exists(Decoy)
draw_sprite_ext(sprite_index,-1,x,y,right,1,angle,c_white,0.4)//CHICKEN VANISHED OPACITY
else
draw_sprite_ext(sprite_index,-1,x,y,right,1,angle,c_white,1)//PLAYER GETS DRAWN HERE

//Alkaline Saliva
if skill_got[32] && isAlkaline && my_health < maxhealth
	draw_sprite_ext(sprAlkalineSaliva,wave,x,y,right,1,0,c_white,0.75);

if triggerfinger>0
triggerfinger+=1;

if triggerfinger>7 
triggerfinger=0;

if back = -1 and !(IsShielding){
draw_sprite_ext(wep_sprt[wep],triggerfinger,x+lengthdir_x(-wkick,point_direction(x,y,mouse_x,mouse_y)+(wepangle*(1-wkick/20))),y+lengthdir_y(-wkick,point_direction(x,y,mouse_x,mouse_y)+(wepangle*(1-wkick/20))),1,wepright,point_direction(x,y,mouse_x,mouse_y)+(wepangle*(1-wkick/20)),c_white,1)
if wep = 63 || wep = 343//Blackhole/Dimension Generator
{
if can_shoot = 1 and ammo[wep_type[wep]] >= wep_cost[wep]{
draw_sprite_ext(sprBlackHoleGeneration,wave,x+lengthdir_x(-wkick,point_direction(x,y,mouse_x,mouse_y)+(wepangle*(1-wkick/20))),y+lengthdir_y(-wkick,point_direction(x,y,mouse_x,mouse_y)+(wepangle*(1-wkick/20))),1,wepright,point_direction(x,y,mouse_x,mouse_y)+(wepangle*(1-wkick/20)),c_white,1)
}}
}


if race = 3 and (KeyCont.key_spec[p] = 1 or KeyCont.key_spec[p] = 2)
{
draw_sprite_ext(sprMindPower,wave,x,y,right,1,0,c_white,1)
}
else if ultra_got[10]=1
{
draw_sprite_ext(sprMonsterStyle,wave,x,y,right,1,0,c_white,1)
}
//else if ultra_got[11]=1// keep the animations goin on brainwashed enemies
//{wave+=1;}

if skill_got[25]=1//strong spirit draw this behind weps
{
if strongspiritused==false&&strongspirit
{
draw_sprite_ext(sprStrongSpirit,wave*0.4,x,y,right,1,0,c_white,1);
}
}

if ultra_got[48]//yung cuz lives
{
draw_sprite_ext(sprYungCuzLives,lag,x,y-8,1,1,0,c_white,1);
}

/*
draw_set_blend_mode(bm_add)

if skill_got[8]//gamma guts
{
draw_sprite_ext(sprGammaGuts,wave*0.4,x,y,1.1,1.1,image_angle,c_white,0.1)
}

draw_set_blend_mode(bm_normal)
*/

if wkick > 0
wkick -= 1
if wkick < 0
wkick += 1

if race = 7
{
if bwkick > 0
bwkick -= 1
if bwkick < 0
bwkick += 1
}
if nearWall
	draw_sprite(sprHammerHeadNear,wave,x,y-16);