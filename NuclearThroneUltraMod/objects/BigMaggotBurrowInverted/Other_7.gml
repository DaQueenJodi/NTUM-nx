if sprite_index = sprBigMaggotBurrowInvert
{
if visible = 1
alarm[0] = 5+random(10)
visible = 0
}
else
{
instance_change(BigMaggotInverted,false)
}

