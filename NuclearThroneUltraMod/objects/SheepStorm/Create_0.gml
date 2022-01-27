image_speed=0;
if instance_exists(Player)
{
projectileHits=2;
enemyHits=7;
    if Player.ultra_got[51]
    {
    projectileHits+=10;
    sprite_index=sprSheepDashFXultra;
    }
    if Player.skill_got[5]==1
    {
    sprite_index=sprSheepDashFXthrn;
    projectileHits+=8;
    }
    if Player.skill_got[5] && Player.ultra_got[51]
    {
    sprite_index=sprSheepDashFXultrathrn;
    }
}else{instance_destroy();}

if Player.ultra_got[49]==1
snd_loop(sndDragonLoop);
else
snd_loop(sndFlamerLoop);

