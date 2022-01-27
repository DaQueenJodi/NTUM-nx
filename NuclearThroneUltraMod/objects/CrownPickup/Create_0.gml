instance_create(x,y,CrownPed)

instance_create(x-16-64,y-16,Floor)
instance_create(x-16-64,y-16-32,Floor)
instance_create(x-16-64,y-16-64,Floor)
instance_create(x-16-64,y-16+32,Floor)
instance_create(x-16-64,y-16+64,Floor)

instance_create(x-16+64,y-16,Floor)
instance_create(x-16+64,y-16-32,Floor)
instance_create(x-16+64,y-16-64,Floor)
instance_create(x-16+64,y-16+32,Floor)
instance_create(x-16+64,y-16+64,Floor)


instance_create(x-16,y-16+64,Floor)
instance_create(x-16-32,y-16+64,Floor)
instance_create(x-16+32,y-16+64,Floor)


instance_create(x-16,y-16-64,Floor)
instance_create(x-16-32,y-16-64,Floor)
instance_create(x-16+32,y-16-64,Floor)



instance_create(x-16,y-16-32,Floor)
instance_create(x-16,y-16+32,Floor)
instance_create(x-16-32,y-16,Floor)
instance_create(x-16+32,y-16,Floor)


with Wall
{
if place_meeting(x,y,other)
{
instance_destroy()
instance_create(x,y,FloorExplo)
}
}

if instance_exists(Crown){
ang1 = choose(0,90,180,270)
do ang2 = choose(0,90,180,270) until ang1 != ang2


instance_create(x+lengthdir_x(128,ang1),y+lengthdir_y(128,ang1),GuardianStatue)
instance_create(x+lengthdir_x(128,ang2),y+lengthdir_y(128,ang2),GuardianStatue)}

