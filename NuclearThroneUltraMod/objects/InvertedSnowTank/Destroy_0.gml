if replace{exit;}

MorphMe=true;
event_inherited()

with instance_create(x,y,SnowTankExplo)
{
spr_dead = sprInvertedSnowTankDead;
right=other.right;
sprite_index=sprInvertedSnowTankHurt;//inverted
my_health=other.my_health;
}
/*
//scrDrop(50,0)
//scrDrop(50,0)


BackCont.shake += 5

snd_play(sndExplosionL)
repeat(3)
{
instance_create(x+random(8)-4,y+random(8)-4,Explosion)
}

/* */
/*  */
