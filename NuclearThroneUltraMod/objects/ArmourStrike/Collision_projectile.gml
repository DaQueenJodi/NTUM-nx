if instance_exists(Player)
{
if Player.ultra_got[61]
{

if other.team!=2
{
with other
{
if object_index!=PopoNade&&object_index!=Grenade
instance_destroy();
}
}

}

}

