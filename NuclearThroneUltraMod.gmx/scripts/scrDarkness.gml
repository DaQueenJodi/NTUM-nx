if darkness = 1
{

if !(surface_exists(dark) ){
dark = surface_create(view_wview,view_hview)
}


surface_set_target(dark)

draw_clear(c_white)
if instance_exists(Player){
if Player.race = 3
draw_clear(c_gray)}else draw_clear(c_gray)

draw_set_color(c_gray)

with Floor{if sprite_index = sprFloor2B or sprite_index = sprFloor102B
draw_circle(x+16-view_xview,y+16-view_yview,32+random(4),0)}
with Player
draw_circle(x-view_xview,y-view_yview,130+random(4),0)
with MeatExplosion
draw_circle(x-view_xview,y-view_yview,140+random(4),0)
with Explosion
draw_circle(x-view_xview,y-view_yview,160+random(4),0)
with SmallExplosion
draw_circle(x-view_xview,y-view_yview,64+random(4),0)
with ChesireCat
draw_circle(x-view_xview,y-view_yview,160+random(4),0)
with Portal
draw_circle(x-view_xview,y-view_yview,120+random(8),0)
with Tangle
draw_circle(x-view_xview,y-view_yview,110+random(4),0)
with Crystal
draw_circle(x-view_xview,y-view_yview,90,0)
with Torch
draw_circle(x-view_xview,y-view_yview,90+random(4),0)
with Barrel
draw_circle(x-view_xview,y-view_yview,90+random(4),0)
with Terminal
draw_circle(x-view_xview,y-view_yview,60+random(4),0)
with Flame
draw_circle(x-view_xview,y-view_yview,70+random(4),0)
with UltraFlame
draw_circle(x-view_xview,y-view_yview,70+random(4),0)
with CrownPickup
draw_circle(x-view_xview,y-view_yview,60,0)
with Bullet1
draw_circle(x-view_xview,y-view_yview,60+random(4),0)
//MORE BULLETS OR WHAT?
with BigMachine
draw_circle(x-view_xview,y-view_yview+32,110+random(3),0)
with Corpse
draw_circle(x-view_xview,y-view_yview,max(0,100-image_index*40),0)
with CrownPickup
draw_rectangle(x-16-view_xview,y-view_yview,x+16-view_xview,min(y,view_yview)-view_yview,0)
with Morph
draw_circle(x-view_xview,y-view_yview,30+random(3),0)
with Sheep
draw_circle(x-view_xview,y-view_yview,90+random(4),0)

draw_set_color(c_black)

with CrownPickup
draw_rectangle(x-16-view_xview,y-view_yview,x+16-view_xview,min(y,view_yview)-view_yview,0)
with Player
{
if race = 3
draw_circle(x-view_xview,y-view_yview,80+random(3),0)
else
draw_circle(x-view_xview,y-view_yview,45+random(3),0)
}
with Explosion
draw_circle(x-view_xview,y-view_yview,110+random(3),0)
with Portal
draw_circle(x-view_xview,y-view_yview,40+random(6),0)
with MeatExplosion
draw_circle(x-view_xview,y-view_yview,40+random(3),0)
with Tangle
draw_circle(x-view_xview,y-view_yview,20+random(3),0)
with Crystal
draw_circle(x-view_xview,y-view_yview,30,0)
with Flame
draw_circle(x-view_xview,y-view_yview,30+random(3),0)
with Torch
draw_circle(x-view_xview,y-view_yview,30+random(3),0)
with Barrel
draw_circle(x-view_xview,y-view_yview,30+random(3),0)
with Terminal
draw_circle(x-view_xview,y-view_yview,20+random(3),0)
with CrownPickup
draw_circle(x-view_xview,y-view_yview,20,0)
//with Corpse
//draw_circle(x-view_xview,y-view_yview,max(0,80-image_index*40),0)
surface_reset_target()
}
