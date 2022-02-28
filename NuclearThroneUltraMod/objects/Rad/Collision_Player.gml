if speed = 0
{instance_destroy()
other.rad += 1
if other.crown == 4
other.rad += 0.18;
snd_play_2d(sndRadPickup)

if other.skill_got[3]//Pluto
{
with instance_create(x,y,BulletHit)
sprite_index=sprEatRad;
}
else
{
with instance_create(x,y,BulletHit)
sprite_index=sprEatRadPlut;
}

}

