with other
{
if instance_exists(Player)
{
    if (Player.ultra_got[17]=1)//Bigger snare
    {
    speed=0;
    x = xprevious+hspeed*0.1
    y = yprevious+vspeed*0.1
    }
    else{
    x = xprevious+hspeed*0.1
    y = yprevious+vspeed*0.1
    }
    
    if Player.skill_got[5] = 1
    {
    if my_health <= maxhealth/2
    {
    with instance_create(x,y,PlantThronebutt)
    image_angle=random(360);
    my_health = 0
    motion_add(point_direction(Player.x,Player.y,x,y),5)
    }
    }
    
    if Player.ultra_got[19]//plant leacher ultra C
    {
    if bloodempty=0{//I still have blood in me please try to get it out of me
    with other{//back into tangle
    drinkblood+=1;
    if drinkblood=irandom_range(4,120)
    {
    other.bloodempty=2;
    num = 1
    Player.my_health += num
    if Player.my_health > Player.maxhealth
    Player.my_health = Player.maxhealth
    
    dir = instance_create(Player.x,Player.y,PopupText)
    dir.mytext = "+"+string(num)+" HP"
    if Player.my_health = Player.maxhealth
    dir.mytext = "MAX HP"
    
    }
    }
    if my_health <=0{
    scrDrop(20,0)
            dir = random(360)
            repeat(3)
            {
            with instance_create(x,y,BloodStreak)
            {
            motion_add(other.dir,8)
            image_angle = direction
            }
            dir += 120
            }
        }
    }}
}
}

