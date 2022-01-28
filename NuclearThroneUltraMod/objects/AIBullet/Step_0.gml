/*if collision_circle(x,y-8,16,Wall,false,true)
{//wall above
    if Direction<90
    {
    rotation=0;
    }
    else
    {
    rotation=1;
    }
}
else if collision_circle(x,y+8,16,Wall,false,true)
{//wall below
    if Direction<270
    {
    rotation=0;
    }
    else
    {
    rotation=1;
    }
}
else if collision_circle(x-4,y,16,Wall,false,true)
{//wall left
    if Direction>180
    {
    rotation=1;
    }
    else
    {
    rotation=0;
    }
}
else if collision_circle(x+4,y,16,Wall,false,true)
{//wall right
    if Direction>270
    {
    rotation=1;
    }
    else
    {
    rotation=0;
    }
}

if rotation=0
{
        if place_meeting(x+8,y,Wall)
        {//Wall right
        direction=90;//    \/
        } 
        else if place_meeting(x-8,y,Wall)
        {//Wall left
        direction=270;//    /\
        }
        else if place_meeting(x,y+8,Wall)
        {//Wall below
        direction=180;//    <--
        }
        else if place_meeting(x,y-8,Wall)
        {//Wall above
        direction=0;//    -->
        }
}
else if rotation=1
{
        if place_meeting(x+8,y,Wall)
        {//Wall right
        direction=270;//    /\
        }
        else if place_meeting(x-8,y,Wall)
        {//Wall left
        direction=90;//    \/
        }
        else if place_meeting(x,y+8,Wall)
        {//Wall below
        direction=0;//    -->
        }
        else if place_meeting(x,y-8,Wall)
        {//Wall above
        direction=180;//    <--
        }
}
*/

if collision_circle(x,y,16,Wall,false,true)
{//hug wall
//var nearWall = instance_nearest(x+lengthdir_x(speed,direction),y+lengthdir_y(speed,direction),Wall);
var nearWall = instance_nearest(x,y,Wall);
motion_add(point_direction(x,y,nearWall.x,nearWall.y),speed);

}

if instance_exists(enemy)
{
var nearEnemy = instance_nearest(x,y,enemy);
if point_distance(x,y,nearEnemy.x,nearEnemy.y)<64
motion_add(point_direction(x,y,nearEnemy.x,nearEnemy.y,),2);
}


/*
if place_meeting(x,y-4,Wall)
{//wall above
    if Direction<90
    {
    
        if place_meeting(x+4,y,Wall)
        {//Wall right
        direction=270;//    \/
        }
        
        if place_meeting(x-4,y,Wall)
        {//Wall left
        direction=90;//    /\
        }
        
        if place_meeting(x,y+4,Wall)
        {//Wall below
        direction=180;//    <--
        }
        
        if place_meeting(x,y-4,Wall)
        {//Wall above
        direction=0;//    -->
        }
    
    }
    else
    {
    
        if place_meeting(x+4,y,Wall)
        {//Wall right
        direction=90;//    /\
        }
        
        if place_meeting(x-4,y,Wall)
        {//Wall left
        direction=270;//    \/
        }
        
        if place_meeting(x,y+2,Wall)
        {//Wall below
        direction=0;//    -->
        }
        
        if place_meeting(x,y-2,Wall)
        {//Wall above
        direction=180;//    <--
        }
    
    }
}
else if place_meeting(x,y+4,Wall)
{//wall below
    if Direction<270
    {
    
        if place_meeting(x+4,y,Wall)
        {//Wall right
        direction=270;//    \/
        }
        
        if place_meeting(x-4,y,Wall)
        {//Wall left
        direction=90;//    /\
        }
        
        if place_meeting(x,y+4,Wall)
        {//Wall below
        direction=180;//    <--
        }
        
        if place_meeting(x,y-4,Wall)
        {//Wall above
        direction=0;//    -->
        }
    
    }
    else
    {
    
        if place_meeting(x+4,y,Wall)
        {//Wall right
        direction=90;//    /\
        }
        
        if place_meeting(x-4,y,Wall)
        {//Wall left
        direction=270;//    \/
        }
        
        if place_meeting(x,y+2,Wall)
        {//Wall below
        direction=0;//    -->
        }
        
        if place_meeting(x,y-2,Wall)
        {//Wall above
        direction=180;//    <--
        }
    
    }
}
else if place_meeting(x-4,y,Wall)
{//wall left
    if Direction<180
    {
    
        if place_meeting(x+4,y,Wall)
        {//Wall right
        direction=270;//    \/
        }
        
        if place_meeting(x-4,y,Wall)
        {//Wall left
        direction=90;//    /\
        }
        
        if place_meeting(x,y+4,Wall)
        {//Wall below
        direction=180;//    <--
        }
        
        if place_meeting(x,y-4,Wall)
        {//Wall above
        direction=0;//    -->
        }
    
    }
    else
    {
    
        if place_meeting(x+4,y,Wall)
        {//Wall right
        direction=90;//    /\
        }
        
        if place_meeting(x-4,y,Wall)
        {//Wall left
        direction=270;//    \/
        }
        
        if place_meeting(x,y+2,Wall)
        {//Wall below
        direction=0;//    -->
        }
        
        if place_meeting(x,y-2,Wall)
        {//Wall above
        direction=180;//    <--
        }
    
    }
}
else if place_meeting(x+4,y,Wall)
{//wall right
    if Direction>270
    {
    
        if place_meeting(x+4,y,Wall)
        {//Wall right
        direction=270;//    \/
        }
        
        if place_meeting(x-4,y,Wall)
        {//Wall left
        direction=90;//    /\
        }
        
        if place_meeting(x,y+4,Wall)
        {//Wall below
        direction=180;//    <--
        }
        
        if place_meeting(x,y-4,Wall)
        {//Wall above
        direction=0;//    -->
        }
    
    }
    else
    {
    
        if place_meeting(x+4,y,Wall)
        {//Wall right
        direction=90;//    /\
        }
        
        if place_meeting(x-4,y,Wall)
        {//Wall left
        direction=270;//    \/
        }
        
        if place_meeting(x,y+2,Wall)
        {//Wall below
        direction=0;//    -->
        }
        
        if place_meeting(x,y-2,Wall)
        {//Wall above
        direction=180;//    <--
        }
    
    }
}

/* */
/*  */
