alarm[0]=2;
angle+=10;

BackCont.shake += 1

repeat(1+irandom(2))
{
with instance_create(x,y,AcidStreak)
image_angle = random(360)
}


repeat(2){
with instance_create(x,y,ToxicThrowerGas)
{motion_add(other.angle+random(10)-5,1+random(4))
move_contact_solid(direction,8)
}


with instance_create(x,y,ToxicThrowerGas)
{motion_add(other.angle+180+random(10)-5,1+random(4))
move_contact_solid(direction,8)
}
}
//}

