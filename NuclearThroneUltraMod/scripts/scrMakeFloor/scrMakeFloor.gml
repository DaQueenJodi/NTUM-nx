function scrMakeFloor() {

	x += lengthdir_x(32,direction)
	y += lengthdir_y(32,direction)


	area = 0
	subarea=1;
	if instance_exists(Player)
	{
	area = Player.area
	subarea=Player.subarea;}
	if area = 1|| area = 105 || area = 113{ if random(2) < 1
	{instance_create(x,y,Floor)
	instance_create(x+32,y,Floor)
	instance_create(x+32,y+32,Floor)
	instance_create(x,y+32,Floor)
	}else instance_create(x,y,Floor)} 

	if area=101 { if random(2) < 1.4
	{instance_create(x,y,Floor)
	instance_create(x+32,y,Floor)
	instance_create(x+32,y+32,Floor)
	instance_create(x,y+32,Floor)
	}else instance_create(x,y,Floor)} 

	if area = 0 or area = 2 or area = 102 or area = 6 or area = 110 or area = 112
	instance_create(x,y,Floor)

	if area = 3 || area = 106 { if random(9) < 1 || ( subarea=3&&random(4)<1 )//random 8 scrapyard
	{instance_create(x,y,Floor)
	instance_create(x+32,y,Floor)
	instance_create(x+32,y+32,Floor)
	instance_create(x,y+32,Floor)
	instance_create(x,y-32,Floor)
	instance_create(x-32,y,Floor)
	instance_create(x+32,y-32,Floor)
	instance_create(x-32,y-32,Floor)
	instance_create(x-32,y+32,Floor)
	}else instance_create(x,y,Floor)} 

	if area = 4|| area = 111//caves?
	instance_create(x,y,Floor)

	if area = 5 || area = 107 { if ( (random(10) < 1) || (subarea=3&&random(40)<1 ) )//frozzen city 11
	{
	if random(2) < 1 && !(subarea==3&&random(4)<3)
	{
	instance_create(x+32,y,Floor)
	instance_create(x+32,y+32,Floor)
	instance_create(x,y+32,Floor)
	instance_create(x,y-32,Floor)
	instance_create(x-32,y,Floor)
	instance_create(x+32,y-32,Floor)
	instance_create(x-32,y-32,Floor)
	instance_create(x-32,y+32,Floor)
	}
	else
	{
	instance_create(x+64,y-64,Floor)
	instance_create(x+64,y-32,Floor)
	instance_create(x+64,y,Floor)
	instance_create(x+64,y+32,Floor)
	instance_create(x+64,y+64,Floor)

	instance_create(x-64,y-64,Floor)
	instance_create(x-64,y-32,Floor)
	instance_create(x-64,y,Floor)
	instance_create(x-64,y+32,Floor)
	instance_create(x-64,y+64,Floor)

	instance_create(x,y-64,Floor)
	instance_create(x-32,y-64,Floor)
	instance_create(x+32,y-64,Floor)

	instance_create(x,y+64,Floor)
	instance_create(x-32,y+64,Floor)
	instance_create(x+32,y+64,Floor)
	}
	}else instance_create(x,y,Floor)} 


	if area = 6&& subarea = 2//LABS BOSS
	{
	//if(instance_number(Floor)>=goal){

	var xx;
	var yy;
	    for(xx=0;xx<8;xx+=1){
	    instance_create(x+32*xx,y,Floor);//BOSS BIG MACHINE/////////////////////////////<------------
        
	        for(yy=-1;yy<10;yy+=1){
        
        
        
	        if xx==4 && yy==0
	        instance_create(x+32*xx,y+32*yy,BigMachine);//the boss
        
        
	        if xx==0 && yy==0
	        {
	        instance_create(x+32*xx+16,y+32*yy+16,BigMachineLaser);
	        }
        
        
	        if xx==7 && yy==9
	        {
	        with instance_create(x+32*xx+16,y+32*yy-16,BigMachineLaser)
	        image_xscale=-1;
	        }
        
	        if xx==4 && yy==7
	        {
	        instance_create(x+32*xx+16,y+32*yy+16,WeaponChest);
	        }
        
	        if instance_exists(Player)
	        {
	        if Player.loops>0
	        {//LOOP
	        if xx==7 && yy==0
	        {
	        with instance_create(x+32*xx+16,y+32*yy-16,BigMachineLaser)
	        image_xscale=-1;
	        }
	        }
	        if Player.loops>1
	        {//LOOP 2
	        if xx==0 && yy==9
	        {
	        instance_create(x+32*xx+16,y+32*yy-16,BigMachineLaser)
        
	        }
	        }
        
	        if Player.loops>3
	        {//LOOP 3
	        if xx==0 && yy==4
	        {
	        instance_create(x+32*xx+16,y+32*yy-16,BigMachineLaser)
        
	        }
	        if xx==7 && yy==4
	        {
	        with instance_create(x+32*xx+16,y+32*yy-16,BigMachineLaser)
	        image_xscale=-1;
	        }
	        }
	        }
        
        
        
	        with instance_create(x+32*xx,y+32*yy,Floor)
	        {styleb=1;
	        event_inherited();
	        }
        
        
	        if xx==0 && yy==-1
	        instance_create(x+32*xx,y+32*yy+16,LabTrap);
        
	        if xx==7 && yy==-1
	        instance_create(x+32*xx+16,y+32*yy+16,LabTrap)
        
        
	        }
	    }
    
	    //}
	}

	if area = 112 && subarea = 2//INVERTED LABS BOSS
	{
	//if(instance_number(Floor)>=goal){

	var xx;
	var yy;
	    for(xx=0;xx<6;xx+=1){
	    instance_create(x+32*xx,y,Floor);//BOSS INVERTED! BIG MACHINE/////////////////////////////<------------
        
	        for(yy=-1;yy<8;yy+=1){
        
        
        
	        if xx==3 && yy==0
	        instance_create(x+32*xx,y+32*yy,InvertedBigMachine);//the boss
        
        
	        if xx==0 && yy==0
	        {
	        instance_create(x+32*xx+16,y+32*yy+16,InvertedBigMachineLaser);
	        }
        
	        if xx==3 && yy==7
	        {
	        with instance_create(x+32*xx+16,y+32*yy+16,InvertedBigMachineLaser)
	        {horizontal=true
	        image_angle=90;}
	        }
        
        
	        if xx==7 && yy==7
	        {
	        with instance_create(x+32*xx+16,y+32*yy-16,InvertedBigMachineLaser)
	        image_xscale=-1;
	        }
        
	        if xx==3 && yy==6
	        {
	        instance_create(x+32*xx+16,y+32*yy+16,WeaponChest);
	        }
        
	        if instance_exists(Player)
	        {
	        if Player.loops>0
	        {//LOOP
	        if xx==5 && yy==0
	        {
	        with instance_create(x+32*xx+16,y+32*yy-16,InvertedBigMachineLaser)
	        image_xscale=-1;
	        }
	        }
	        if Player.loops>1
	        {//LOOP 2
	        if xx==0 && yy==7
	        {
	        instance_create(x+32*xx+16,y+32*yy-16,InvertedBigMachineLaser)
        
	        }
	        }
        
	        if Player.loops>3
	        {//LOOP 3
	        if xx==0 && yy==3
	        {
	        instance_create(x+32*xx+16,y+32*yy-16,InvertedBigMachineLaser)
        
	        }
	        if xx==5 && yy==4
	        {
	        with instance_create(x+32*xx+16,y+32*yy-16,InvertedBigMachineLaser)
	        image_xscale=-1;
	        }
	        }
	        }
        
        
        
	        with instance_create(x+32*xx,y+32*yy,Floor)
	        {styleb=1;
	        event_inherited();
	        }
        
        
	        if xx==0 && yy==-1
	        instance_create(x+32*xx,y+32*yy+16,LabTrap);
        
	        if xx==5 && yy==7
	        with instance_create(x+32*xx+16,y+32*yy+16,LabTrap)
	        loop=true;
        
	        }
	    }
    
	    //}
	}





	if area = 7||area=104||area=108 { //VULCANO
	if(random(11)<1)
	{
	instance_create(x,y,Floor)
	instance_create(x,y-lengthdir_y(32,direction),Floor)
	instance_create(x+lengthdir_x(32,direction),y-lengthdir_y(32,direction),Floor)
	instance_create(x+lengthdir_x(64,direction),y-lengthdir_y(32,direction),Floor)
	instance_create(x-lengthdir_x(32,direction),y-lengthdir_y(32,direction),Floor)
	instance_create(x-lengthdir_x(64,direction),y-lengthdir_y(32,direction),Floor)
	instance_create(x-lengthdir_x(64,direction),y-lengthdir_y(64,direction),Floor)
	instance_create(x+lengthdir_x(64,direction),y-lengthdir_y(64,direction),Floor)
	instance_create(x+lengthdir_x(64,direction),y-lengthdir_y(96,direction),Floor)
	instance_create(x-lengthdir_x(64,direction),y-lengthdir_y(96,direction),Floor)
	instance_create(x-lengthdir_x(64,direction),y-lengthdir_y(128,direction),Floor)
	instance_create(x+lengthdir_x(64,direction),y-lengthdir_y(128,direction),Floor)
	}
	else if(random(12)<1){
	instance_create(x,y,Floor)
	instance_create(x,y+32,Floor)
	instance_create(x+32,y,Floor)
	instance_create(x-32,y,Floor)
	instance_create(x,y-32,Floor)
	instance_create(x+32,y+32,Floor)
	instance_create(x-32,y-32,Floor)
	instance_create(x+32,y-32,Floor)
	instance_create(x-32,y+32,Floor)
	}
	else if(random(11))<1{
	if random(2)<1{
	instance_create(x,y,Floor)
	instance_create(x,y+32,Floor)
	instance_create(x,y-32,Floor)}
	else{
	instance_create(x,y,Floor)
	instance_create(x+32,y,Floor)
	instance_create(x-32,y,Floor)
	}
	}
	else if random(2)<1{
	instance_create(x,y,Floor)
	}
	else
	{
	instance_create(x,y+32,Floor);
	instance_create(x,y,Floor)
	instance_create(x,y-32,Floor);
	}
	if(instance_exists(Player)){
	if Player.subarea=2||area=104{//Volcanic boss battleground
	if(instance_number(Floor)>=goal){

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
    
	    }}
	}

	}

	if area = 8 || area = 109{ if random(11) < 1//WONDERLAND
	{instance_create(x,y,Floor)
	instance_create(x+32,y,Floor)
	instance_create(x+32,y+32,Floor)
	instance_create(x,y+32,Floor)
	instance_create(x+64,y,Floor)
	instance_create(x+64,y+64,Floor)
	instance_create(x+64,y+32,Floor)
	instance_create(x,y+64,Floor)

	}
	else if random(10) < 1
	{instance_create(x,y,Floor)
	instance_create(x-32,y,Floor)
	instance_create(x-32,y-32,Floor)
	instance_create(x,y-32,Floor)
	instance_create(x-64,y,Floor)
	instance_create(x-64,y-64,Floor)
	instance_create(x-64,y-32,Floor)
	instance_create(x,y-64,Floor)
	}
	else if random(9)<1{
	instance_create(x,y,Floor)
	instance_create(x+32,y,Floor)
	instance_create(x-32,y,Floor)
	instance_create(x-64,y,Floor)
	instance_create(x+64,y,Floor)
	instance_create(x-96,y,Floor)
	instance_create(x+96,y,Floor)
	instance_create(x-96,y+32,Floor)
	instance_create(x+96,y+32,Floor)
	instance_create(x-96,y+64,Floor)
	instance_create(x+96,y+64,Floor)
	}
	else if random(8)<1 {
	instance_create(x,y,Floor)
	instance_create(x,y+32,Floor)
	instance_create(x+32,y,Floor)
	instance_create(x+32,y+32,Floor)
	}
	else
	instance_create(x,y,Floor);
	}
	//Palace
	if area = 9{ if random(5) < 3
	{instance_create(x,y,Floor)
	instance_create(x+32,y,Floor)
	instance_create(x-32,y,Floor)
	instance_create(x,y+32,Floor)
	instance_create(x,y-32,Floor)
	instance_create(x+32,y+32,Floor)
	instance_create(x+32,y-32,Floor)
	instance_create(x-32,y-32,Floor)
	instance_create(x-32,y+32,Floor)
	x += lengthdir_x(32,direction)
	y += lengthdir_y(32,direction)
	}else 
	{
	instance_create(x,y,Floor)
	instance_create(x,y+32,Floor)
	}} 
	/*
		//Cool generation:
		if area = 9{ if random(5) < 3
		{instance_create(x,y,Floor)
		instance_create(x+32,y,Floor)
		instance_create(x-32,y,Floor)

		}else 
		{
		instance_create(x,y,Floor)
		instance_create(x,y+32,Floor)
		}} 
	*/
	if area = 100 { if random(8) < 1//CROWN VAULT
	{

	dir = choose(1,2)
	if dir = 1
	{
	instance_create(x+32,y,Floor)
	instance_create(x+64,y,Floor)
	instance_create(x,y,Floor)
	instance_create(x-32,y,Floor)
	instance_create(x-64,y,Floor)
	}
	else
	{
	instance_create(x,y+32,Floor)
	instance_create(x,y+64,Floor)
	instance_create(x,y,Floor)
	instance_create(x,y-32,Floor)
	instance_create(x,y-64,Floor)
	}
	}else instance_create(x,y,Floor)} 

	if area = 103 {
	if round(instance_number(Floor)/12) = instance_number(Floor)/12 and instance_number(Floor) != 0
	{
	x += lengthdir_x(32,direction)
	y += lengthdir_y(32,direction)
	instance_create(x+32,y,Floor)
	instance_create(x+32,y+32,Floor)
	instance_create(x,y+32,Floor)
	instance_create(x,y-32,Floor)
	instance_create(x-32,y,Floor)
	instance_create(x+32,y-32,Floor)
	instance_create(x-32,y-32,Floor)
	instance_create(x-32,y+32,Floor)
	} else instance_create(x,y,Floor)}



	//HOW high the chances are for a certain turn (or no turn)
	//if area = 1
	trn = choose(0,0,0,0,0,0,0,0,0,90,-90,90,-90,180)
	if area = 2 or area = 102 or area = 110
	trn = choose(0,0,0,0,0,0,0,0,90,-90,90,-90,180)
	if area = 3 || area = 106
	trn = choose(0,0,0,0,90,-90)
	if area = 4 || area = 111
	trn = choose(0,0,0,0,90,-90,180)
	if area = 5 || area = 107
	trn = choose(0,0,0,0,180,180)//0 0 0 0 0 180
	if area = 6 || area = 112
	trn = choose(0,0,0,0,0,0,0,0,0,0,0,90,-90,180)
	if area = 7 || area = 108
	trn= choose(-90,0,0,0,0,0,0,0,180,0,90);
	if area = 8 || area = 109
	trn = choose(0,0,0,0,0,180,0,0,90,90,-90,90,-90,180)
	if area = 9
	trn = choose(0,0,0,0,0,0,0,0,0,90,-90,90,-90)
	if area = 100
	trn = choose(0,0,0,0,0,0,0,0,0,0,90,-90,180,180)
	if area = 103
	trn = choose(0,0,0,90,-90,180)

	direction += trn
	if(instance_exists(Player)){//VOLCANO BOSS
	if ((area=7||area=108) && Player.subarea=2) || area=104
	direction=0;
	}



	if abs(trn) = 90 and (area = 6 || area = 112) and random(2) < 1
	{
	instance_create(x+32,y,Floor)
	instance_create(x+32,y+32,Floor)
	instance_create(x,y+32,Floor)
	instance_create(x,y-32,Floor)
	instance_create(x-32,y,Floor)
	instance_create(x+32,y-32,Floor)
	instance_create(x-32,y-32,Floor)
	instance_create(x-32,y+32,Floor)
	if random(3) < 1 && area = 6
	{
	if random(4) < 3
	instance_create(x-16,y-16,Server)
	if random(4) < 3
	instance_create(x-16+64,y-16,Server)
	if random(4) < 3
	instance_create(x-16,y-16+64,Server)
	if random(4) < 3
	instance_create(x-16+64,y-16+64,Server)
	}
	else if area = 112 && random(3) < 1//inverted 
	{
	if random(4) < 3
	instance_create(x-16,y-16,InvertedServer)
	if random(4) < 3
	instance_create(x-16+64,y-16,InvertedServer)
	if random(4) < 3
	instance_create(x-16,y-16+64,InvertedServer)
	if random(4) < 3
	instance_create(x-16+64,y-16+64,InvertedServer)
	}

	}

	//instance_create(x,y,Floor)

	if (trn = 180 or (abs(trn) = 90 and (area = 3 || area = 106))) and point_distance(x,y,10016,10016) > 48{
	instance_create(x,y,Floor)
	instance_create(x+16,y+16,WeaponChest)}


	//BRANCHES
	if area = 1 || area = 105 || area = 101
	{
	if random(19+instance_number(FloorMaker)) > 20
	{
	instance_destroy()
	if point_distance(x,y,10016,10016) > 48{
	instance_create(x+16,y+16,AmmoChest)
	instance_create(x,y,Floor)}
	}
	if random(8) < 1
	instance_create(x,y,FloorMaker)
	}

	if area = 9
	{
	   if random(10+instance_number(FloorMaker)) > 20
	   {
	   instance_destroy()
	   if point_distance(x,y,10016,10016) > 48{
	   instance_create(x+16,y+16,AmmoChest)
	   instance_create(x,y,Floor)}
	   }
	   if random(7) < 1
	   instance_create(x,y,FloorMaker)
	}

	if area = 2 or area = 110
	{
	if random(14+instance_number(FloorMaker)) > 15
	{
	if point_distance(x,y,10016,10016) > 48{
	instance_create(x+16,y+16,AmmoChest)
	instance_create(x,y,Floor)}
	instance_destroy()
	}
	if random(15) < 1
	instance_create(x,y,FloorMaker)
	}

	if (area = 3 || area = 106) && subarea !=3
	{
	if random(39+instance_number(FloorMaker)) > 40
	{
	if point_distance(x,y,10016,10016) > 48
	{
	instance_create(x+16,y+16,AmmoChest)
	instance_create(x,y,Floor)}
	instance_destroy()
	}
	if random(25) < 1
	instance_create(x,y,FloorMaker)
	}
	if area = 4 || area = 111
	{
	if random(9+instance_number(FloorMaker)) > 10
	{
	instance_destroy()
	if point_distance(x,y,10016,10016) > 48{
	instance_create(x+16,y+16,AmmoChest)
	instance_create(x,y,Floor)}
	}
	if random(4) < 1
	instance_create(x,y,FloorMaker)
	}
	if area = 5 || area = 107
	{
	if random(14+instance_number(FloorMaker)) > 15
	{
	instance_destroy()
	if point_distance(x,y,10016,10016) > 48{
	instance_create(x,y,Floor)
	instance_create(x+16,y+16,AmmoChest)}
	}
	if random(22) < 1//25
	instance_create(x,y,FloorMaker)
	}
	if area = 6 || area = 112
	{
	if random(21+instance_number(FloorMaker)) > 22
	{
	instance_destroy()
	if point_distance(x,y,10016,10016) > 48
	{
	instance_create(x,y,Floor)
	instance_create(x+16,y+16,AmmoChest)}
	}
	if random(20) < 1
	instance_create(x,y,FloorMaker)
	}

	if area = 7 || area=108//CUSTOM
	{
	if random(14+instance_number(FloorMaker)) > 15
	{
	if point_distance(x,y,10016,10016) > 48{
	instance_create(x+16,y+16,AmmoChest)
	instance_create(x,y,Floor)}
	instance_destroy()
	}
	if random(30) < 5
	instance_create(x,y,FloorMaker)
	}

	if area = 8 || area = 109//WONDERLAND
	{

	if random(14) < 1
	instance_create(x,y,FloorMaker)

	if point_distance(x,y,10016,10016) > 48{
	instance_create(x+16,y+16,AmmoChest)
	instance_create(x,y,Floor)}
	}


	if area = 102//pizza sewers
	{
	if random(9+instance_number(FloorMaker)) > 10
	{
	if point_distance(x,y,10016,10016) > 48{
	instance_create(x+16,y+16,AmmoChest)
	instance_create(x,y,Floor)}
	instance_destroy()
	}
	if random(5) < 1
	instance_create(x,y,FloorMaker)
	}

	if area = 103//yv mansion
	{
	if random(31+instance_number(FloorMaker)) > 32
	{
	instance_destroy()
	if point_distance(x,y,10016,10016) > 48{
	instance_create(x,y,Floor)
	instance_create(x+16,y+16,AmmoChest)}
	}
	if random(20) < 1
	instance_create(x,y,FloorMaker)
	}



}
