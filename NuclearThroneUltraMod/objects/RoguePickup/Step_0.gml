if image_index < 1
image_index += random(0.04)
else
image_index += 0.4

if instance_exists(Player)
{

if ( (Player.ultra_got[12]=1) && (KeyCont.key_spec[Player.p] = 1 or KeyCont.key_spec[Player.p] = 2) )
{

if point_distance(x,y,Player.x,Player.y) < 30+Player.skill_got[3]*60 or instance_exists(Portal) or instance_exists(TemporaryBuff)
{
x += lengthdir_x(6,point_direction(x,y,Player.x,Player.y))
y += lengthdir_y(6,point_direction(x,y,Player.x,Player.y))
}

}
else{
if point_distance(x,y,Player.x,Player.y) < 30+Player.skill_got[3]*60 or instance_exists(Portal)
{
if !place_meeting(x+lengthdir_x(6,point_direction(x,y,Player.x,Player.y)),y,Wall)
x += lengthdir_x(6,point_direction(x,y,Player.x,Player.y))
if !place_meeting(x,y+lengthdir_y(6,point_direction(x,y,Player.x,Player.y)),Wall)
y += lengthdir_y(6,point_direction(x,y,Player.x,Player.y))
}
}

if instance_exists(Implosion)
{
if point_distance(x,y,Implosion.x,Implosion.y) < 30+Player.skill_got[3]*60 or instance_exists(Implosion)
{
if place_free(x+lengthdir_x(6,point_direction(x,y,Implosion.x,Implosion.y)),y) || ((Player.ultra_got[12]==1)&& (KeyCont.key_spec[Player.p] = 1 or KeyCont.key_spec[Player.p] = 2))
x += lengthdir_x(6,point_direction(x,y,Implosion.x,Implosion.y))
if place_free(x,y+lengthdir_y(6,point_direction(x,y,Implosion.x,Implosion.y))) || ((Player.ultra_got[12]==1)&& (KeyCont.key_spec[Player.p] = 1 or KeyCont.key_spec[Player.p] = 2))
y += lengthdir_y(6,point_direction(x,y,Implosion.x,Implosion.y))
}
}

}

