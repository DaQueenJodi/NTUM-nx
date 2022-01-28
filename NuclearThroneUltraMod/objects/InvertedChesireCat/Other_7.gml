if sprite_index=sprInvertedChesireCatIntro&&drama=false
{
drama=true;
instance_create(x,y,DramaCamera);
alarm[1]=10+random(10);
sprite_index=sprInvertedChesireCatIdle;
}

if sprite_index=spr_fire
{
drama=false;
sprite_index=sprInvertedChesireCatLaser;
}

