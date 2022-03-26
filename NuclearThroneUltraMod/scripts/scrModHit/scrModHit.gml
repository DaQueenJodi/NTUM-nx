function scrModHit() {
	//RUN THIS CODE INSIDE OF ENEMY OBJET IN THE PROJETILE COLLISION EVENT
	/*WEAPON MODS
	mod1[]
	mod2[]
	mod3[]
	0 nothing
	1 toxic
	2 explosive
	3 flame
	4 frost
	5 blood
	6 lightning
	7 kraken
	8 swarm
	9 bouncer
	10 shotgun
	11 projectile speed
	12 reload speed
	13 homing
	14 radiation
	15 splinter
	16 morph
	*/
	if instance_exists(Player) && Player.moddelay < 1
	{
		with Player
		{
		    if skill_got[30]//power craving
				moddelay=16;
		    else
				moddelay=26;
			if ultra_got[65] == 1//Weapon smith Ultra A
				moddelay -= 10;
    
	    }
		with other {//PROJECTILE

			var newfrost = true;
			var myFrost = noone;
			var r = 3 + Player.skill_got[30];
			var i = 0;
			repeat(r)
			{
				//HACKY SHIT SHOULD HAVE BEEN AN ARRAY WE WILL NEVER REFACTOR
				var m = Mod1;
				switch (i)
				{
					case 0:
						m = Mod1;
					break;
					case 1:
						m = Mod2;
					break;
					case 2:
						m = Mod3;
					break;
					case 3:
						m = Mod4;
					break;
				}
				i++;
			//MOD 1
			switch (m){//if you see this pls report to me what weapon you just fired!

				case 1:// GAS EM!

				snd_play(sndToxicBoltGas,0,true);
				repeat(2)
				with instance_create(other.x,other.y,ToxicThrowerGas)
					motion_add(random(360),1+random(2))
				break;

				case 2://EXPLODE!
				snd_play(sndExplosionS,0,true);
				instance_create(other.x+lengthdir_x(16,random(360)),other.y+lengthdir_x(16,random(360)),SmallExplosion)//SMALL EXPLOSIONS CAUSE THIS IS OP AS FUCK
				break;

				case 3://burn!
				snd_play(sndFlare,0,true);
				with instance_create(other.x,other.y,Flame){
					//image_speed = 0.5;//0.6 for regular flame from flame shotguns
					motion_add(random(360),1+random(2))
					team=other.team;
				}
				break;

				case 4:
					//freeze bitch!
				    if newfrost{
				        with other{//enemy
					        if alarm[11] < 1 && my_health > 0 {//this probably doesnt work cause iit takes the health off after this collision detection
								frozen=true;
					            with instance_create(x,y,FrozenEnemy)
					            {
						            //image_speed=0;
						            image_xscale=other.size*choose(1,-1);
						            image_yscale=other.size;
						            xx=other.x
						            yy=other.y
						            debrisAmount=4;
					            }
					        alarm[11]+=10;//30 for freezebullets
					        if alarm[1] > 0
					            alarm[1] += 10;
					        }
						}
				        newfrost=false;
				    }
				    else
				    {
					    with myFrost
							debrisAmount+=3;
					    with other
					    {
					        alarm[11]+=10;
					        if alarm[1] > 0
					                alarm[1] += 10;
					    }
					}
				break;

				case 5:
					snd_play(sndMeatExplo,0,true);
					instance_create(other.x+lengthdir_x(8,random(360)),other.y+lengthdir_x(8,random(360)),MeatExplosion)
				break;

				case 6://ELECTROCUTION!
				snd_play(choose(sndSpark1,sndSpark2),0,true);
					with instance_create(other.x,other.y,Lightning)
					{
						image_angle = random(360);
						image_speed += 0.2
						team = other.team
						ammo = 8
						event_perform(ev_alarm,0)
						visible = 0
						with instance_create(x,y,LightningSpawn)
						image_angle = other.image_angle
					}
				break;

				case 7://TENTACLES!?
				snd_play(sndRoll,0,true);
				if !sound_isplaying(sndWater1) && !sound_isplaying(sndWater2)&&random(3)<1
				snd_play(choose(sndWater1,sndWater2),0,true);

				with other {
					with instance_create(x,y,Tentacle)
					{
						image_angle = point_direction(x,y,instance_nearest(x,y,enemy).x,instance_nearest(x,y,enemy).y)+random(20)-10;//Instance nearest not me?
						creator=other.id;
						team = 2//Player.team
						ammo = 12
						event_perform(ev_alarm,0)
						visible = 0
						with instance_create(x,y,LightningSpawn)
						{
							sprite_index=sprTentacleSpawn
							image_angle = other.image_angle
						}

						repeat(2)
						{
						    with instance_create(x,y,FishBoost)
						    {
								motion_add( random(360),2+random(4) );
						    }
						}
					}
				}
				break;

				case 8://swarm
					snd_play(sndSwarmRapid,0.05,true);
					with instance_create(other.x+lengthdir_x(4,random(360)),other.y+lengthdir_x(4,random(360)),SwarmBolt)
					{
						team=other.team;
						direction=random(360);
						hits -= 1;
					}
				break;

				case 9://bouncer
				snd_play(sndBouncerHitWall,0.05,true);
				with instance_create(other.x+lengthdir_x(4,random(360)),other.y+lengthdir_x(4,random(360)),Bullet3)
				{
					motion_add(random(360),5.2)
					image_angle = direction
					team = 2
					mask_index=mskPickupThroughWall;
					alarm[0] = 5;
				}
				break;

				case 10://shotgun

				snd_play(sndShotgun,0.05,true);
				repeat(3)
				{
					with instance_create(other.x,other.y,Bullet2)
					{
						motion_add(random(360),10+random(5))
						image_angle = direction
						team = 2
						mask_index=mskPickupThroughWall;
						alarm[0] = 3;
					}
				}
				break;

				case 14://Radiation
				snd_play(sndRadMod,0.2,true);
				if other.raddrop != 0
					other.raddrop += 6;

				break;

				case 15://SPLINTER

				snd_play(sndSplinterMinigun,0.05,true)
				repeat(3)
				{
					with instance_create(other.x,other.y,Splinter)//5 splinters
					{
						motion_add(random(360),20+random(4))
						image_angle = direction
						team = other.team
					}
				}

				break;

				case 16://MORPH
				with instance_create(other.x,other.y,Morph)
					scrCanHumphry();
				break;
	
				case 17://DROPS
					scrDrop(9,0);
				break;
	
				case 18://GUNS
					scrDrop(0,6);
				break;

				}
			}
		}
	}
}
