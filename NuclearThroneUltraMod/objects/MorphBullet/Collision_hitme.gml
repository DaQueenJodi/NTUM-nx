/// @description xxx

// Inherit the parent event
event_inherited();

if other.team != team and other.my_health > 0
{
	with instance_create(other.x,other.y,Morph)
	{
		team = other.team;	
	}	
}