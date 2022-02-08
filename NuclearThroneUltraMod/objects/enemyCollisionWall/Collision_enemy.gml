if size <= other.size
motion_add(point_direction(other.x,other.y,x,y)+random(40)-20,2)//1

//cap speed
if speed > 10 speed = 10

if meleedamage > 0 and other.team != team//is it a melee enemy?
{
    
    //enemy deals damage to the other enemy
    
    
        if sprite_index != spr_hurt
        {
        //snd_play(snd_mele)
        other.sprite_index = spr_hurt
        image_index = 0
        snd_play(snd_hurt, hurt_pitch_variation)
        other.my_health -= meleedamage
        motion_add(point_direction(other.x,other.y,x,y),4)
        }
    
}


