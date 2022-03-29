alarm[1] = 30+random(20)//10 5

scrTarget()
if target > 0
{
	var dis = point_distance(x,y,target.x,target.y)
	if !hasHadIntro && dis < 200
	{
		alarm[2] = 20;
		alarm[1] = 60;
		imageIndex = 0;
		with myKind
			hasHadIntro = true;
		hasHadIntro = true;
	}
	else {
		if active
		{
			//PLAYER EXISTS
			if collision_line(x,y,target.x,target.y,Wall,0,0) < 0 and random(5) < 4
			{
				if random(3) > 2
				{
					event_user(0);
				}
				else if random(2) < 1
				{
					//SPAWN TURRET
					var canSpawnTurret = false;
					var xx = x - 64;
					var yy = y - 32;
					if !collision_point(xx,yy,Turret,false,false)
					{
						canSpawnTurret = true;
						instance_create(xx,yy,BigWallBreak);
						instance_create(xx,yy,turretToSpawn);
					}
					xx = x + 64;
					yy = y - 32;
					if !collision_point(xx,yy,Turret,false,false)
					{
						canSpawnTurret = true;
						instance_create(xx,yy,BigWallBreak);
						instance_create(xx,yy,turretToSpawn);
					}
					xx = x + 64;
					yy = y + 48;
					if !collision_point(xx,yy,Turret,false,false)
					{
						canSpawnTurret = true;
						instance_create(xx,yy,BigWallBreak);
						instance_create(xx,yy,turretToSpawn);
					}
					xx = x - 64;
					yy = y + 48;
					if !collision_point(xx,yy,Turret,false,false)
					{
						canSpawnTurret = true;
						instance_create(xx,yy,BigWallBreak);
						instance_create(xx,yy,turretToSpawn);
					}
			
					if canSpawnTurret
					{
						spr_idle = spr_fire1;
						spr_walk = spr_fire1;
						sprite_index = spr_fire1;
						alarm[1] = image_number/image_speed + 10;
						imageIndex = 0;
						snd_play(sndTechnomancerSpawnTurret);
					}
				}
			}
			else
			{
				//DONT SEE PLAYER
				if random(4) < 1
				{
					event_user(0);
				}
			}
		}
		else
		{
			//Not active make nearest active
			var t = target;
			var d = 999999;
			var nd;
			var nearestId = -1;
			with myKind
			{
				nd = point_distance(x,y,t.x,t.y)
				if nd < d
				{
					d = nd;
					nearestId = id;
				}
			}
			if nearestId != -1 && !nearestId.active
			{
				with nearestId
				{
					event_user(1);
				}
			}
		}
	}
}