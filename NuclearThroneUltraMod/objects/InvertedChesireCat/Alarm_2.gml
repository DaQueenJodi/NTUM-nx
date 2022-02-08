/// @description Let the battle begin!
sprite_index=sprInvertedChesireCatIntro;
mask_index=mskPickupThroughWall;
alarm[1]=70;
image_index=0;
visible=true;
with InvertedChesireCatTail
{
    repeat(4){
    with instance_create(x,y,Smoke)
    {motion_add(random(360),1+random(4))
    image_speed=0.2+random(0.2);}}
sprite_index=sprInvertedChesireCatTailIntro;
image_index=0;
visible=true;
}

if instance_exists(Player)
{
    if random(2)<1
    {
    x=Player.x+64+random(64);
    y=Player.y+64-random(64);
    }
    else
    {
    x=Player.x-64-random(64);
    y=Player.y+64-random(64);
    }
}

TopCont.darkness = 1;

