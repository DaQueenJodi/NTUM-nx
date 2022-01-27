if instance_exists(Player)
{if Player.speed = 0
alarm[2] = 2
else
{
sprite_index = sprInvertedLilHunterLiftStart
image_index = 0
instance_change(InvertedLilHunterFly,false)

snd_play(sndLilHunterLaunch)
}
}else
{
sprite_index = sprInvertedLilHunterLiftStart
image_index = 0
instance_change(InvertedLilHunterFly,false)

snd_play(sndLilHunterLaunch)
}

