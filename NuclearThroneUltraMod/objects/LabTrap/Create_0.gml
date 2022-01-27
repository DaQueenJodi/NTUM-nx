//side = choose(0,1)
side=0;
alarm[0] = 30+random(40)
fire = 0
instance_create(x,y,TrapScorchMark)

loop=false;

if instance_exists(Player)
{
if Player.loops>1//loop 2 yo
loop=true;
}

