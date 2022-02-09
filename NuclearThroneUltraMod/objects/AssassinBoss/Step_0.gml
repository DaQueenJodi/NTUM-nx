event_inherited()

if walk > 0
{
walk -= 1
motion_add(direction,3)
if target > 0
mp_potential_step(target.x,target.y,2,false)
}

if speed > 5.2
speed = 5.2

if dodge > 0
{
sprite_index=spr_walk;
move_contact_solid(direction,8)
dodge -= 1.4
alarm[1] +=2;
}

//hes firing at me!
if point_distance(x,y,mouse_x,mouse_y)<60{
if mouse_check_button_pressed(mb_left) and target > 0
{
if point_distance(x,y,target.x,target.y) < 64
direction = point_direction(x,y,target.x,target.y)
else
direction = point_direction(target.x+lengthdir_x(point_distance(x,y,target.x,target.y)*0.95,point_direction(x,y,mouse_x,mouse_y)),target.y+lengthdir_y(point_distance(x,y,target.x,target.y)*0.95,point_direction(x,y,mouse_x,mouse_y)),x,y)+random(60)-30
dodge = 3
walk=4;
sprite_index=spr_walk;
gunangle = direction
}}


if target>0 && alarm[0]>0//we just smacked dat
{
motion_add(point_direction(x,y,target.x,target.y)+180+random(40)-20,3)
walk = alarm[0]
}


//Dodge bullet or hit it back
if instance_exists(projectile)
{
    dodgethis = instance_nearest(x,y,projectile);
    with instance_nearest(x,y,projectile)
    {
    if team=2
    other.dodgethis=id;
    }
    
    if point_distance(x,y,dodgethis.x,dodgethis.y)<64&&dodgethis.team=2
    {
    var forwardprojectilex;
    var forwardprojectiley;
    
    forwardprojectilex=lengthdir_x(dodgethis.speed,dodgethis.direction);
    forwardprojectiley=lengthdir_y(dodgethis.speed,dodgethis.direction);
    
    //direction = point_direction(target.x+lengthdir_x(point_distance(x,y,target.x,target.y)*0.95,point_direction(x,y,forwardprojectilex,forwardprojectiley)),target.y+lengthdir_y(point_distance(x,y,target.x,target.y)*0.95,point_direction(x,y,forwardprojectilex,forwardprojectiley)),x,y)+random(60)-30
    var projectiledir = point_direction(x,y,dodgethis.x,dodgethis.y);
    
    if random(8)<1 && alarm[0]<1 && alarm[2]<1 && projectiledir < gunangle+100 && projectiledir > gunangle-100 && dodgethis.typ!=0
    {//SMACK THAT PROJETILE BACK
    
        with instance_create(x+lengthdir_x(2,projectiledir),y+lengthdir_y(2,projectiledir),AssassinSlash)
        {
        dmg=5;
        image_angle = other.gunangle
        motion_add(other.gunangle+random(10)-5,2.5)
        team = other.team
        }
        alarm[0] = 12
        
        snd_play(sndAssassinAttack)
        wepangle = -wepangle
        motion_add(projectiledir,6)
    
    }
    else if random(5)<1
    {//TELEPORT
    
    with instance_nearest(instance_furthest(x+random(120)-60,y+random(120)-60,Floor),instance_furthest(x+random(120)-60,y+random(120)-60,Floor),Floor)
    {
    other.x=x+16;
    other.y=y+16;
    }
    
    }
    else if alarm[2]<1
    {//dodge it
    direction=point_direction(x,y,forwardprojectilex,forwardprojectiley)+180+random(30)-15;
    dodge=4;
    alarm[0] += 1
    }
    
    }
}


