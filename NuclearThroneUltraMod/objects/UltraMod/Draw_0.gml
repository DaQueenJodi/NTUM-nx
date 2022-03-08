draw_self();

if sprite_index == sprUltraModHolder
{
draw_set_blend_mode(bm_add);
draw_sprite_ext(sprUltraModIcon,ultramod,x,y-16+sin(wave),swapper*2,2,image_angle,c_white,0.1);

draw_set_blend_mode(bm_normal);
draw_sprite_ext(sprUltraModIcon,ultramod,x,y-16+sin(wave),swapper,1,image_angle,c_white,1);
}

