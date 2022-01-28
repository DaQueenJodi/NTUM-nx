if sprite_index = sprBigMaggotBurrow
{
if visible = 1
alarm[0] = 30+random(30)
visible = 0
}
else
{
instance_change(BigMaggot,false)
}

