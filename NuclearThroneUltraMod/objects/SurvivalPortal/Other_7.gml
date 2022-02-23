/// @description Yoo
if sprite_index = sprPortalSpawnOld
{
	sprite_index = sprProtoPortal;
	image_index = 0;
	depth = 0;
}
else if sprite_index = sprProtoPortal
{
	sprite_index = sprProtoPortalDisappear;
	image_index = 0;
}
else if sprite_index = sprProtoPortalDisappear
{
	instance_destroy();
}