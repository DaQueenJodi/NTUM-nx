if other.team != team
{
with other
{
if(object_index!=Sheep&&object_index!=ExplosiveSheep){
   // MorphMe=true;
    snd_play(snd_hurt, hurt_pitch_variation,true)
    my_health -=other.dmg;
    sprite_index = spr_hurt
    image_index = 0
    Sleep(1)
    BackCont.shake += 0.5
    }
}
}

