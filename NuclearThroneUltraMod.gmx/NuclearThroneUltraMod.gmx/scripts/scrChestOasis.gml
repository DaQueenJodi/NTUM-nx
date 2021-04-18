if !instance_exists(GenCont)
{
with Player
{

    if area=1 and subarea<3&&oasisskip!=-1
    {
    oasisskip-=1;
    
    if oasisskip=0
    {
    with instance_create(x,y,WantBoss)
    {oasis=true;
    event_perform(ev_alarm,0) }
    }
    
    }

}
}


