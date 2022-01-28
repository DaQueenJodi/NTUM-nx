if instance_number(enemy) <= 2&&!instance_exists(GenCont){
if awake=false{
x=xstart
y=ystart
alarm[1]=80;
meleedamage=7;
awake=true;
//instance_create(x,y,HotDrakeLava);
mask_index=mskHotDrake;
instance_create(x,y,DramaCamera);
}
}
if awake=false{
x=xstart+2000;//place outside level
y=ystart+2000;
maxhealth = 1000//1250//Big Dog =300
my_health=maxhealth;


if instance_exists(Player){
my_health=round( (1+(Player.loops*0.2))*my_health )//bandit loop 1: 1.1*4= 5(rounded up)
maxhealth=my_health;
}

if UberCont.opt_gamemode==5//1HP gamemode
{
my_health=1;
maxhealth=my_health
}

}

