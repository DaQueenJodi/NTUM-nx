if sprite_index = sprPortalSpawn
{
//instance_create(x,y,PortalShock);
if type = 1
{
sprite_index = sprPortal
if inverted
sprite_index = sprPortalInverted
}
if type = 3
sprite_index = sprProtoPortal
}
if sprite_index = sprPortalDisappear or sprite_index = sprProtoPortalDisappear or sprite_index = sprPortalInvertedDisappear
{
with Player
{
reload = 0
breload = 0
}
audio_stop_sound(sndPortalLoop)
room_restart()
instance_destroy()
}

