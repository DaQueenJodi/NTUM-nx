if sprite_index != sprPortalSpawn
{
if endgame = 100
{
snd_play(sndPortalClose);
if random(1000) < 1//Culture
	snd_play_2d(sndYEAH,0,true,false,2,1);
endgame = 30;

//ROBOT
    if Player.race = 8
    {
    if (Player.race == 8 && (Player.ultra_got[29]==1||Player.ultra_got[30]==1||Player.ultra_got[31]==1||Player.ultra_got[32]==1))
    {
    with WepPickup
    {
    if curse != 1&&persistent==false
    {
    if string_copy(name,0,4) = "GOLD"
    {repeat(4)
    {if random(Player.maxhealth) > Player.my_health and Player.crown != 2
    instance_create(x,y,HPPickup)
    else
    instance_create(Player.x,Player.y,AmmoPickup)}}
    with instance_create(Player.x,Player.y,RobotEat)
    image_xscale = Player.right
    
    if random(Player.maxhealth) > Player.my_health and Player.crown != 2
    instance_create(Player.x,Player.y,HPPickup)
    else
    instance_create(Player.x,Player.y,AmmoPickup)
    
    if Player.skill_got[5] = 1
    {
    snd_play(sndRobotEatUpg)
    instance_create(Player.x,Player.y,AmmoPickup)
    }
    else
    snd_play(sndRobotEat)
    instance_destroy();
    }
    }
    instance_create(Player.x,Player.y,Smoke)
    }} 
    

}
}
if inverted{
with other
inverted=true//take me to the inverted universe
}

if Player.area = 8 && Player.subarea < 2 && ( instance_exists(Sheep)||instance_exists(ExplosiveSheep) )
{
	Player.banditland=true;
}

