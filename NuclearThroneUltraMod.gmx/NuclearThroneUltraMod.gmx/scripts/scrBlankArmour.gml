if ultra_got[64]//BLANK ARMOUR
{

with enemy{
if x > view_xview and x < view_xview+view_wview and y > view_yview and y < view_yview+view_hview
{
//if sprite_index!=spr_hurt{
snd_play(other.snd_hurt)
Sleep(20)
draw_rectangle_colour(view_xview,view_yview,view_xview+view_wview,view_yview+view_hview,c_white,c_white,c_white,c_white,false);
Sleep(20);

if place_free(x+lengthdir_x(4,point_direction(x,y,Player.x,Player.y)+180),y)
x += lengthdir_x(4,point_direction(x,y,Player.x,Player.y)+180)
if place_free(x,y+lengthdir_y(4,point_direction(x,y,Player.x,Player.y)+180))
y += lengthdir_y(4,point_direction(x,y,Player.x,Player.y)+180)


my_health -= 24;
sprite_index = spr_hurt
image_index = 0
//motion_add(other.direction,6)

//with instance_create(x,y,SharpTeeth)
//owner=other.id;
//}

motion_add(other.direction+180,10);
}}
with projectile
{
if team!=other.team
instance_destroy();
}

}
