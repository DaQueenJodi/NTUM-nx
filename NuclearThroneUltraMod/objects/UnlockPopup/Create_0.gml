x=__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 );
y=__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 );
image_speed=0.4;

mytext="";

alarm[0]=140;
drawtext=false;

yy=0;
iAmFirst = false;
if instance_number(UnlockPopup) == 1
	iAmFirst = true;
alarm[0] += instance_number(UnlockPopup);
debug("a0: ",alarm[0]);
with UnlockPopup
{
	alarm[0] -= 20;
}