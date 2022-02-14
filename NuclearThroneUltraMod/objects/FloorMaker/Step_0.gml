if instance_number(Floor) > goal
{
if point_distance(x,y,10016,10016) > 48
{
if instance_exists(Player){
if (Player.area == 3 and Player.subarea == 3){//#safe spawns 4 big dog
Player.x=x+16;
Player.y=y+16;
}
instance_create(x,y,Floor)
if Player.race=22
{
if Player.area!=104 && Player.area!=100 && !instance_exists(RogueAmmoChest)
instance_create(x+16,y+16,RogueAmmoChest)
}
else if Player.area!=104 && Player.race!=25 && !(Player.area == 9 && Player.subarea ==3)//Not mutation smith
instance_create(x+16,y+16,RadChest)
else if (Player.area == 9 && Player.subarea ==3)
instance_create(x+16,y+16,Carpet);
}
}
//End piece
if instance_exists(Player) && !endPieceSpawned
{
	var area = Player.area;
	var subarea = Player.subarea;
if area = 7||area=104
if subarea=2||area=104 {//Volcanic boss battleground
	with FloorMaker
	{
		endPieceSpawned = true;	
	}
	x += lengthdir_x(32,direction)
	y += lengthdir_y(32,direction)
	var xx;
	var yy;
	for(xx=0;xx<10;xx+=1){
	instance_create(x+32*xx,y,Floor);//BOSS VULCANO/////////////////////////////<------------
        
		for(yy=0;yy<10;yy+=1){
		if (area==7||area=108) && xx>4
		{
		instance_create(x+32*xx,y+32*yy,FloorLava)//This is the bos's area
        
		if xx==8 && yy==5
		{
		if area = 7
		instance_create(x+32*xx,y+32*yy,HotDrake);//the boss
		else if area = 108
		instance_create(x+32*xx,y+32*yy,InvertedHotDrake);//the INVERTED boss
		}
        
        
		}else{
		instance_create(x+32*xx,y+32*yy,Floor)}
        
		if area==104 && xx==2 && yy==2
		{
		instance_create(x+32*xx,y+32*yy,GiantGoldenWeaponChest)//crown of love?
		}
		if area==104 && xx==6 && yy==2
		{
		instance_create(x+32*xx,y+32*yy,GiantGoldenWeaponChest)
		}
		if area==104 && xx==4 && yy==9
		{
		instance_create(x+32*xx,y+32*yy,CarVenusFixed)
		}
		}
	}
}
}
instance_destroy()
}
else
{
if UberCont.firstFloorMaker
{
	SetSeed();
	UberCont.firstFloorMaker = false;
	if instance_exists(Player) && Player.area == 9 && Player.subarea == 3
	{
		other.x = 10016;
		other.y = 10016;
		Player.x = other.x;
		Player.y = other.y;
		direction = 90;
	}
}
scrMakeFloor()

with GenCont
alarm[0] = 3
with GenCont
alarm[2] = 2

with MenuGen
alarm[1] = 3
}

