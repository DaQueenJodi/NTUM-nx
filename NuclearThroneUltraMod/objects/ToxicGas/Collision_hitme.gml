if other.team != team && other.team != 2
{
with other
{
if sprite_index != spr_hurt
{
with other
instance_destroy()
snd_play(snd_hurt)
my_health -= other.dmg
sprite_index = spr_hurt
image_index = 0
Sleep(10)
BackCont.shake += 1
}
}

}
else if other.team=2 && other.team!=team && image_xscale>0.22
{
    with other
    {
        if sprite_index != spr_hurt
        {
        with other
        instance_destroy()
        snd_play(snd_hurt)
        my_health -= 2
        sprite_index = spr_hurt
        image_index = 0
        Sleep(10);
        BackCont.shake += 1
        }
    }
}

