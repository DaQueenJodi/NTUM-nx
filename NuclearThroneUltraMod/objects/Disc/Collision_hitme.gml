if other.team != team
{with other
{
if sprite_index != spr_hurt
{

snd_play(snd_hurt, hurt_pitch_variation)
my_health -= other.dmg;
sprite_index = spr_hurt
image_index = 0
motion_add(other.direction,4)
BackCont.shake += 3

if team=2//player
{

snd_play(snd_hurt, hurt_pitch_variation)
if my_health<=0//dead
scrUnlockGameMode(19,"FOR BEING STUPID");

}

}
}
Sleep(10)}

