dir=random(360);

//lengthdir_x(2+random(8),other.dir)

/*with instance_create(x+lengthdir_x(2+random(8),other.dir),y+lengthdir_y(2+random(8),other.dir),PlasmaFX)
{
motion_add(other.dir+180,2+random(4))
}*/


    with instance_create(x+lengthdir_x(2+random(8),other.dir),y+lengthdir_y(2+random(8),other.dir),FishBoost)
    {
    motion_add(other.dir+180,2+random(4))
    }

/* */
/*  */
