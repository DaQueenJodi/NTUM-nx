if sprite_index=sprChesireCatIntro&&drama=false
{
drama=true;
instance_create(x,y,DramaCamera);
alarm[1]=10+random(10);
sprite_index=sprChesireCatIdle;
}

if sprite_index=spr_fire
{
drama=false;
sprite_index=sprChesireCatLaser;
}

