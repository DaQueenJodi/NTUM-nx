if alarm[11]>1//Frozen
{
if alarm[1]<8
alarm[1]=18;


if instance_exists(Player)
{
if Player.race!=3 && !(KeyCont.key_spec[Player.p] = 1 or KeyCont.key_spec[Player.p] = 2)
{
x=xprevious;
y=yprevious;



if sprite_index!=spr_hurt && Player.race=24//Elementor's passive
{
my_health-=0.5;
snd_play(snd_hurt, hurt_pitch_variation);
sprite_index=spr_hurt
}

}
speed=0;
target=-1;
//image_speed=0;
}
}

///Damage indicator


if instance_exists(Player)
{
    if (UberCont.opt_dmgindicator && !instance_exists(SpiralCont))
    {
		if prevhealth>my_health
		{
            with instance_create(x+irandom(16)-16,y+irandom(16)-16,PopupText)
            {
            theColour=c_orange;
            mytext=string(other.prevhealth-other.my_health)
            time = 6
            alarm[1]=1;
            blink=false;
            vspeed = irandom(3)-1
            hspeed= irandom(3)-1
            }
        }
    }
}
