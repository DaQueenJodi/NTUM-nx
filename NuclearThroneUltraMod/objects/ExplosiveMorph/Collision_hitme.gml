if other.team != team
{
with other
{
if(object_index!=Sheep&&object_index!=ExplosiveSheep){
    if sprite_index != spr_hurt
    {
    //MorphMe=true;
    snd_play(snd_hurt)
    my_health -=other.dmg;
    sprite_index = spr_hurt
    image_index = 0
    motion_add(point_direction(other.x,other.y,x,y),2)
    Sleep(1)
    //BackCont.shake += 2
    }
    }
}
}

