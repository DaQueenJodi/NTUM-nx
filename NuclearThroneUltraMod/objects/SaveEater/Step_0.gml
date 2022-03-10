/// @description xxx
if alarm[1] < 1
{
image_xscale += 1.5;
image_yscale += 1.5;
}
x = camera_get_view_x(view_camera[0])+ (camera_get_view_width(view_camera[0])*0.5);
y = camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0])*0.5);