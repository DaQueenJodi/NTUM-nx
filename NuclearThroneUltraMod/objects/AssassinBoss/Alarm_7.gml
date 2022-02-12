/// @description AfterImage
if speed > 2
{
	ds_list_insert(afterImage,0,{
		sp : sprite_index,
		ii: image_index,
		xs: right,
		time: afterImageDuration,
		xx: x,
		yy: y
	});
}
var size = 	ds_list_size(afterImage);
for (var i = 0; i < size; i++) {
	afterImage[| i].time --;
	if (afterImage[| i].time < 0)
	{
		ds_list_delete(afterImage,i)
	}
}
var size = 	ds_list_size(afterImage);
if (size > afterImageMax)
{
	ds_list_delete(afterImage,size);
}
alarm[7] = afterImageDelay;