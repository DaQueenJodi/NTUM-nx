if instance_exists(Player)
{

if other.team=Player.team
{
if Player.ultra_got[93]=1
{
    with other
    {
    if typ!=0
    {
        do
        {
        x+=lengthdir_x(2,direction);
        
        y+=lengthdir_y(2,direction);
        
        if place_meeting(x,y,Wall)
        instance_destroy();
        
        }
        until(place_free(x,y) || place_meeting(x,y,Wall) || !place_meeting(x,y,VikingWall) )
    }
    }
}
else
{
instance_destroy();

    with other
    {
    if typ!=0
    instance_destroy();
    }
}

}
else
{



if Player.skill_got[5]=1
{

if other.typ =1
{
other.team = 2


other.direction = point_direction(x,y,other.x,other.y)
other.image_angle = other.direction
with instance_create(other.x,other.y,Deflect)
{
image_angle = other.direction
}

}
if other.typ = 2
{
with other
instance_destroy()
}


}
else
{
    with other
    {
    instance_destroy();
    }
}

}


}

