//CHARGING FUN

walk = 0

spr_idle = sprInvertedBanditBossTell
spr_walk = sprInvertedBanditBossDash
spr_hurt = sprInvertedBanditBossHurt
spr_dead = sprInvertedBanditBossDead
spr_fire = sprInvertedBanditBossStop

if gunangle > 90 and gunangle < 270
right = -1
else
right = 1

snd_play(sndBigBanditMeleeStart)

alarm[4] = 15

