scrDrop(100,100)

event_inherited()

repeat(5+irandom(6))
{
	with instance_create(x,y,RavenFeather)
		image_index = 5;
}

repeat(4+irandom(2))
{
	with instance_create(x,y,RavenFeather)
		image_index = 6
}