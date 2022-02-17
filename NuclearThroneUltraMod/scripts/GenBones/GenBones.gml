///GenBones();
// /@description
///@param
function GenBones(){
	if !place_free(x-32,y) and !place_free(x+32,y) and place_free(x,y)
	{
	if random(9) < 1
	instance_create(x,y,Bones)
	if random(9) < 1
	instance_create(x,y+16,Bones)
	if random(9) < 1
	{
	with instance_create(x+32,y,Bones)
	image_xscale = -1}
	if random(9) < 1{
	with instance_create(x+32,y+16,Bones)
	image_xscale = -1}
	}
}