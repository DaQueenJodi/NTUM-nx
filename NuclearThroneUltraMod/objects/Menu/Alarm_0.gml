if mode = 0
{if image_index < image_number-1
{
image_index += 1

if image_index < 7
{
alarm[0] = 2
snd_play(sndMachinegun)
BackCont.shake += 3
if image_index = 6
alarm[0] = 20
}
else
if image_index = 7
{
BackCont.shake += 8
snd_play(sndShovel)
snd_play(sndMeatExplo)
snd_play(sndExplosion)
}

}
}

