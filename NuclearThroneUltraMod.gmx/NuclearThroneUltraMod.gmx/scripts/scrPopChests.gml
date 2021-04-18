var gol=choose(1,1,1,1,1,1,1,1,2);
if instance_exists(Player)
{
if(Player.skill_got[23]){//OPEN MIND

if Player.race=25
gol=choose(2,2,3,2,4);
else
gol = choose(2,2,3,2,2);


}


instance_exists(Player){
if Player.area = 104{
exit;}}

if Player.area = 100
{
if instance_exists(Crown){
with instance_furthest(Player.x,Player.y,WeaponChest)
instance_create(x,y,ProtoChest)}
gol = 0
}
}

if instance_exists(WeaponChest)
{do {with instance_nearest(Player.x+random(500)-250,Player.y+random(500)-250,WeaponChest) instance_destroy()}
until instance_number(WeaponChest) <= gol}
if instance_exists(RadChest)
{do {with instance_nearest(Player.x+random(500)-250,Player.y+random(500)-250,RadChest) instance_destroy()}
until instance_number(RadChest) <= gol}
if instance_exists(AmmoChest)
{do {with instance_nearest(Player.x+random(500)-250,Player.y+random(500)-250,AmmoChest) instance_destroy()}
until instance_number(AmmoChest) <= gol}
{do {with instance_nearest(Player.x+random(500)-250,Player.y+random(500)-250,HealthChest) instance_destroy()}
until instance_number(HealthChest) <= gol}
with ChestOpen
instance_destroy()

if instance_exists(Player)
{
if Player.crown = 9
{
with RadChest
{image_speed = 0.4
instance_change(Wind,false)
instance_create(x,y,AmmoChest)}
with AmmoChestMystery
{image_speed = 0.4
instance_change(Wind,false)
instance_create(x,y,AmmoChest)}
with WeaponChest
{image_speed = 0.4
instance_change(Wind,false)
instance_create(x,y,AmmoChest)}
with HealthChest
{image_speed = 0.4
instance_change(Wind,false)
instance_create(x,y,AmmoChest)}
}
with AmmoChest
{
if random(11) < 1 and (Player.area >= 2 or Player.loops >= 1)
{
instance_create(x,y,Mimic)
image_speed = 0.4
instance_change(Wind,false)
}
}


with HealthChest
{
if random(51) < 1 and (Player.area >= 2 or Player.loops >= 1)
{
instance_create(x,y,SuperMimic)
image_speed = 0.4
instance_change(Wind,false)
}
}
}
