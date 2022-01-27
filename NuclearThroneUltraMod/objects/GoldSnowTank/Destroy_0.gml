MorphMe=true;
event_inherited()
scrDrop(20,10)

/*
BackCont.shake += 5

snd_play(sndExplosionL)
repeat(3)
{
instance_create(x+random(8)-4,y+random(8)-4,Explosion)
}*/



with instance_create(x,y,SnowTankExplo)
{
spr_dead = sprGoldenSnowTankDead;
right=other.right;
sprite_index=sprGoldenSnowTankHurt;
my_health=other.my_health;
}

/* */
/*  */
