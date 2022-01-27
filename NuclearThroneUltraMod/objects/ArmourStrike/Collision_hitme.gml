if other.team != team and other.my_health > 0
{
with other
{if sprite_index != spr_hurt || random(35)<1
{
if instance_exists(Player)
{
my_health -= 4*Player.level

//freeze bitch!
if alarm[11]<1&&my_health>0&&Player.ultra_got[63]{
frozen=true;
    with instance_create(x,y,FrozenEnemy)
    {
    //image_speed=0;
    image_xscale=other.size*choose(1,-1);
    image_yscale=other.size;
    xx=other.x
    yy=other.y
    }
alarm[11]+=60;
}


}
else
my_health -= 4;

sprite_index = spr_hurt
image_index = 0
motion_add(other.image_angle,10)
snd_play(snd_hurt)}
}

if other.my_health<1// && other.sprite_index!=other.spr_hurt
{
amountofenemies++;
with ArmourStrike
amountofenemies=other.amountofenemies
}


instance_create(x,y,Dust)

}

