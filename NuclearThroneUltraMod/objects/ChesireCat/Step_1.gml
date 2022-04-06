/// @description in case prepping or firing and just got hit!
event_inherited();
if sprite_index=spr_hurt{
if alarm[3]>0||alarm[4]>0&&sprite_index!=sprChesireCatLaser
{
//if sprite_index=spr_fire
sprite_index=sprChesireCatLaser
//else
//sprite_index=spr_fire;
}}

