if ammo > 0
{
spr_hurt = sprInvertedScrapBossHurtSpin
snd_play(sndEnemyFire)
ammo -= 1
alarm[1] = 4
sprite_index = spr_fire
walk = 0
scrTarget()
if target > 0
motion_add(point_direction(x,y,target.x,target.y)+turn*80,0.3)


if instance_exists(Player)
{//Loop leave no gap in spin attack on loop
    if Player.loops>0
    {
    
    repeat(8)
{
with instance_create(x+lengthdir_x(24,gunangle),y+lengthdir_y(16,gunangle),EnemyBullet1)
{
motion_add(other.gunangle,2.5+random(1))
image_angle = direction
team = other.team
}
gunangle += 360/8
}

repeat(8)
{

    repeat(2)
    {
    with instance_create(x,y,EnemyBullet1)
    {
    motion_add(other.originalgunangle,2+random(5))
    image_angle = direction
    team = other.team
    }
    }

originalgunangle += 360/8
}

    }
    else
    { 
    
    repeat(5)//6
{
with instance_create(x+lengthdir_x(24,gunangle),y+lengthdir_y(16,gunangle),EnemyBullet1)
{
motion_add(other.gunangle,2.5)
image_angle = direction
team = other.team
}
gunangle += 360/6
}


repeat(6)
{

    repeat(2)
    {
    with instance_create(x,y,EnemyBullet1)
    {
    motion_add(other.originalgunangle,2+random(5))
    image_angle = direction
    team = other.team
    }
    }

originalgunangle += 360/4
}
    
    }
}
else
{


repeat(5)//6
{
with instance_create(x+lengthdir_x(24,gunangle),y+lengthdir_y(16,gunangle),EnemyBullet1)
{
motion_add(other.gunangle,2.5)
image_angle = direction
team = other.team
}
gunangle += 360/6
}

repeat(6)
{

    repeat(2)
    {
    with instance_create(x,y,EnemyBullet1)
    {
    motion_add(other.originalgunangle,2+random(5))
    image_angle = direction
    team = other.team
    }
    }

originalgunangle += 360/4
}

}


gunangle += 4*turn
}
else
{
spr_hurt = sprInvertedScrapBossHurt
spr_idle = sprInvertedScrapBossStop
image_index = 0
sprite_index = spr_idle
alarm[0] = 18
if instance_exists(Player)
    {
    if Player.loops>0
    alarm[0]=8;
    }
}

