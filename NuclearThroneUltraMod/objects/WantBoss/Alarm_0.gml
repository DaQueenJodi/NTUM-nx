x = __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2
y = __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2
scrTarget()
if target > 0
{with Wall
{
if collision_line(x,y,other.target.x,other.target.y,Wall,true,true) < 0 and point_distance(x,y,other.target.x,other.target.y) > 110 and point_distance(x,y,other.target.x,other.target.y) < 120 and ((!place_free(x-16,y) and !place_free(x+16,y)) or (!place_free(x,y+16) and !place_free(x,y-16)))
instance_create(x,y,CanSpawnBoss)
}
if instance_exists(CanSpawnBoss)
{
with instance_nearest(target.x,target.y,CanSpawnBoss)
{
if other.area=105//inverted desert
{
instance_create(x,y,InvertedBanditBoss)
}
else
{
    if other.area=3 && other.loops>0 && instance_exists(Floor)//scrapyard
    {
    with instance_nearest(instance_furthest(x+random(120)-60,y+random(120)-60,Floor),instance_furthest(x+random(120)-60,y+random(120)-60,Floor),Floor)
    instance_create(x+16,y+16,AssassinBoss);
    }
    else if other.area=106 && other.loops>0 && instance_exists(Floor)//inverted scrapyard
    {
    with instance_nearest(instance_furthest(x+random(120)-60,y+random(120)-60,Floor),instance_furthest(x+random(120)-60,y+random(120)-60,Floor),Floor)
    instance_create(x+16,y+16,InvertedAssassinBoss);
    }
    else if other.area=101||other.area=2
    instance_create(x,y,BigFish);//oasis
    else if other.oasis=true
    {
    with instance_create(x,y,BanditBoss)
    {oasis=true;}
    }
    else if other.area = 1
    instance_create(x,y,BanditBoss)
}

}
with CanSpawnBoss
instance_destroy()

instance_destroy()
}
}
alarm[0] = 5

