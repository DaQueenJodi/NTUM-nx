/// @description destroy wall

if speed>3&&alarm[3]>0
{
    with other
    {
    instance_destroy()
    instance_create(x,y,FloorExplo)
    }

}
speed*=0.87;

