if instance_exists(Player)
{

draw_set_blend_mode(bm_add);

repeat(3)
draw_sprite_ext(sprRage,-1,Player.x+random(16)-8,Player.y+random(16)-8,1+random(0.4)-0.2,1+random(0.4)-0.2,0,c_white,0.1+random(0.2));

draw_set_blend_mode(bm_normal);

}

