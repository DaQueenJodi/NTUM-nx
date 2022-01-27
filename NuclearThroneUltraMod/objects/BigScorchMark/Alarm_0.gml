if popo==true
{

    repeat( irandom(2) )
    {instance_create(x+random(26)-13,y+random(26)-13,PopoFlames);}
    
    
    if random(40)<1//chance for extra flame
    instance_create(x+random(26)-13,y+random(26)-13,PopoFlames);

}
else
{

    repeat( irandom(2) )
    {instance_create(x+random(26)-13,y+random(26)-13,Flames);}
    
    if random(40)<1//chance for extra flame
    instance_create(x+random(26)-13,y+random(26)-13,Flames);

}

