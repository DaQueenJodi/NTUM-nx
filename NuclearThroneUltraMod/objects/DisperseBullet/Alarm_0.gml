alarm[0]=time;

snd_play(sndMachinegun,0.1,true)

with instance_create(x,y,Bullet1)
{motion_add(other.image_angle+90+(random(6)-3),12)
	scrCopyWeaponMod(other);
image_angle = direction
team = other.team
scrCanHumphry();
if random(6)<1 
norecycle=true;
}


with instance_create(x,y,Bullet1)
{motion_add(other.image_angle-90+(random(6)-3),12)
	scrCopyWeaponMod(other);
image_angle = direction
team = other.team
scrCanHumphry();
if random(6)<1 
norecycle=true;
}

BackCont.shake += 1

