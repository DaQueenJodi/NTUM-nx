friction = 0.2
image_angle = random(360)


blink = 30
alarm[0] = 170+random(30)


//RUSH CROWN
if instance_exists(Player){
if Player.RadMony
{
sprite_index=sprBigRadMony;
}
if Player.crown = 4{ alarm[0] /= 3}

if Player.race = 15{ alarm[0] /= 2}//atom




if Player.ultra_got[89]
{

repeat(4)
{

    with instance_create(x,y,ToxicGas)
    {
    motion_add(random(360),0.3+random(1)+(Player.skill_got[5]*2));
    }

}

}

}

image_index = random(7)
image_speed = 0

