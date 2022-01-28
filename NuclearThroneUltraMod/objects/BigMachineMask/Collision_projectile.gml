/// @description kill projectiles
if instance_exists(BigMachine)
{
if BigMachine.alarm[3]<1
{
    with other
    {
    if team!=1
    instance_destroy();
    }
}

}

if instance_exists(InvertedBigMachine)
{
if InvertedBigMachine.alarm[3]<1
{
    with other
    {
    if team!=1
    instance_destroy();
    }
}

}

