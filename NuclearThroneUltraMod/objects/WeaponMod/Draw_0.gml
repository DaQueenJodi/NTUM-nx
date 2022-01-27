draw_self();

if image_index=0
{
draw_set_blend_mode(bm_add);
draw_sprite_ext(sprWeaponModIcon,wepmod,x,y-8+sin(wave),2,2,image_angle,c_white,0.1);

draw_set_blend_mode(bm_normal);
draw_sprite(sprWeaponModIcon,wepmod,x,y-8+sin(wave) );
}

