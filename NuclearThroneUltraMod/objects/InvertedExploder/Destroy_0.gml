event_inherited()

dir = random(360)


var loop = false;
if instance_exists(Player)
{
if Player.loops>1
{
loop=true;


}
}

if loop
{
repeat(14)
    {
    dir += 25
    with instance_create(x,y,EnemyBullet2)
    {
    motion_add(other.dir,5)//4
    image_angle = direction
    team = other.team
    }
    with instance_create(x,y,AcidStreak)
    {
    motion_add(other.dir,8)
    image_angle = direction
    }
    }
}
else{
    repeat(8)
    {
    dir += 45
    with instance_create(x,y,EnemyBullet2)
    {
    motion_add(other.dir,5)//4
    image_angle = direction
    team = other.team
    }
    with instance_create(x,y,AcidStreak)
    {
    motion_add(other.dir,8)
    image_angle = direction
    }
    }
}




BackCont.shake += 10

repeat(3)
{
with instance_create(x,y,ExploderExplo)
motion_add(random(360),random(2)+2)
}

snd_play(sndFrogExplode)

