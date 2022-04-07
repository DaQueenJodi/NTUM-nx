
instance_create(x,y,WallBreak)
event_inherited();
if place_meeting(x,y,Floor) || place_meeting(x,y,FloorExplo)
{
	scrDrop(22,0)
}
