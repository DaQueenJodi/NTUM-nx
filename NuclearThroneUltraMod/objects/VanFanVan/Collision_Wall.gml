/// @description destroy wall slow down
//if speed>3
//{
    with other
    {
		instance_destroy()
		instance_create(x,y,FloorExplo)
    }

//}
speed*=0.998;