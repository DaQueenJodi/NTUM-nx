if other.team != team and other.my_health > 0
{
	if other.sprite_index != other.spr_hurt
	{
		with other
		{
			my_health -= other.dmg
			sprite_index = spr_hurt
			image_index = 0
			motion_add(other.direction,0.5)

			//freeze bitch!
			if alarm[11]<1&&my_health>0{
			frozen=true;
			    with instance_create(x,y,FrozenEnemy)
			    {
			    //image_speed=0;
			    image_xscale=other.size*choose(1,-1);
			    image_yscale=other.size;
			    xx=other.x
			    yy=other.y
				owner=other.id;
			    }
			alarm[11]+=other.freezetime;
			if alarm[1] > 0
				alarm[1] += other.freezetime;

			}
			snd_play(snd_hurt, hurt_pitch_variation,true)
		}
	}
	else if other.team != 2
	{
		image_index += 0.2;//iframe skipper
	}
x = (x+other.x)/2+random(6)-3
y = (y+other.y)/2+random(6)-3
speed *= 0.8
}

