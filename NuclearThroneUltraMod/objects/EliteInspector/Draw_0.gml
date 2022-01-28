if gunangle <= 180
draw_sprite_ext(sprEliteInspectorSword,-1,x,y,1,wepflip,gunangle+wepangle,c_white,1)
if control = 1
draw_sprite_ext(sprEliteInspectorControl,-1,x,y,right,1,angle,c_white,1)
draw_sprite_ext(sprite_index,-1,x,y,right,1,0,c_white,1)
if gunangle > 180
draw_sprite_ext(sprEliteInspectorSword,-1,x,y,1,wepflip,gunangle+wepangle,c_white,1)

