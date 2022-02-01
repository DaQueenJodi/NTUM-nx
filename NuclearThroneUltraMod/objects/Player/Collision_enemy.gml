motion_add(point_direction(other.x,other.y,x,y),other.size*0.5)
if other.team!=team
{

if skill_got[8] = 1//Dealing the damage with gamma guts
{
snd_play(sndGammaGutsProc);
with other
    {
    if Player.race=25
    my_health -= 8//dmg dealt by gamma guts
    else
    my_health -= 7//dmg dealt by gamma guts
    sprite_index = spr_hurt
    image_index = 0
    motion_add(point_direction(other.x,other.y,x,y),3)
    
        if Player.race==13 && Player.ultra_got[50]==0{//Sheep passive
        if other.team=Player.team{
        if Player.justAsheep
        {Player.justAsheep=false;
        instance_create(x,y-16,Notice);
        }}}
    }
    if (other.my_health<=0)//gamma guts kill?
    {
    snd_play(sndGammaGutsKill);
    }
}

//if(alarm[0]<1){
if other.meleedamage > 0 and other.team != team && meleeimmunity<1 && !instance_exists(SheepStorm)//is it a melee enemy?
{
meleeimmunity=22;
    if (skill_got[8] = 1)&&(other.my_health<=0)//gamma guts immunity?
    {
    }
    else if !(KeyCont.key_spec[p] = 1 or KeyCont.key_spec[p] = 2){//Ultra D Humphry no contact damage
    //enemy deals damage to the player
    
    
        if sprite_index != spr_hurt
        {
        snd_play(other.snd_mele)
        sprite_index = spr_hurt
        image_index = 0
        snd_play(snd_hurt)
        my_health -= other.meleedamage
        motion_add(point_direction(other.x,other.y,x,y)+180,8)
        
        with other
        move_contact_solid(point_direction(other.x,other.y,x,y)+180,4);
        
        Sleep(100)
        }
    }
}
}

//}
//alarm[0]=2;


