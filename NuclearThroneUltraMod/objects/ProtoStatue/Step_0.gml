if rad > 25 and spr_idle = sprProtoStatueCharge
{
snd_play(sndStatueCharge)
repeat(2)
instance_create(x,y,IDPDSpawn)
spr_hurt = sprProtoStatueDoneHurt
image_index = 0
spr_idle = sprProtoStatueDone
sprite_index = spr_idle
}
else if rad > 0 and spr_idle != sprProtoStatueDone and spr_idle != sprProtoStatueDoneIdle
{
spr_idle = sprProtoStatueCharge
}