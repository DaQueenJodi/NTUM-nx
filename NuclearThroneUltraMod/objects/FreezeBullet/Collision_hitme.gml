if other.team != team and other.my_health > 0 and other.object_index!=Player
{instance_destroy()
with other
{
my_health -= other.dmg
if instance_exists(Player){
if Player.ultra_got[28]//roids ultra d
{my_health -=2;}}
//freeze bitch!
if alarm[11]<1&&my_health>0{
frozen=true;
    with instance_create(x,y,FrozenEnemy)
    {
    //image_speed=0;
    image_xscale=other.size*choose(1,-1);
    image_yscale=other.size;
    xx=other.x
    yy=other.y
	owner = other.id;
    }
alarm[11]+= other.freezetime;
if alarm[1] > 0
	alarm[1] += other.freezetime;
}
sprite_index = spr_hurt
image_index = 0
motion_add(other.direction,8)
}

snd_play(other.snd_hurt, other.hurt_pitch_variation,true)
with instance_create(x,y,BulletHit)
	sprite_index = sprFreezeBulletHit;

//RECYCLE GLAND
if instance_exists(Player){
if Player.skill_got[16] = 1 and random(3) < 2 +Player.betterrecyclegland
{Player.ammo[1] += 2
instance_create(x,y,RecycleGland);}}

}
else if other.team != team and other.my_health > 0
{
//Hit player


instance_destroy()
with other
{
my_health -= other.dmg
if instance_exists(Player){
if Player.ultra_got[28]//roids ultra d
{my_health -=2;}}
//freeze bitch!
if frozen<1&&my_health>0{
    with instance_create(x,y,FrozenPlayer)
    {
    //image_speed=0;
    image_xscale=other.size*choose(1,-1);
    image_yscale=other.size;
    xx=other.x
    yy=other.y
    }
frozen+=other.freezetime;
}
sprite_index = spr_hurt
image_index = 0
motion_add(other.direction,8)
snd_play(snd_hurt, hurt_pitch_variation)
}

instance_create(x,y,BulletHit)

}



