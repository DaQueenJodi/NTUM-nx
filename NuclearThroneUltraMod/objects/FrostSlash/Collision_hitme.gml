if other.team != team
{with other
{
if sprite_index != spr_hurt
{
snd_play(snd_hurt, hurt_pitch_variation)
my_health -= other.dmg
sprite_index = spr_hurt
image_index = 0
motion_add(other.direction,8)
Sleep(other.sleepRate+size*10)
BackCont.shake += 5
}
if alarm[11]<1&&my_health>0{
frozen=true;
    with instance_create(x,y,FrozenEnemy)
    {
    //image_speed=0;
    image_xscale=other.size*choose(1,-1);
    image_yscale=other.size;
    xx=other.x
    yy=other.y
	owner=other.id;
    }
alarm[11]+=other.freezetime;
if alarm[1] > 0
	alarm[1] += other.freezetime;

}
}}

