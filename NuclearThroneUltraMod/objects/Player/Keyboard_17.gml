if UberCont.public = 0
{
//CHEATS

if keyboard_check_pressed(ord("Z"))
{

Player.ammo[1] += 200
Player.ammo[2] += 20
Player.ammo[3] += 20
Player.ammo[4] += 20
Player.ammo[5] += 20
if wep < maxwep
wep += 1
else
wep = 1
}

if keyboard_check_pressed(ord("X"))
{

Player.ammo[1] += 200
Player.ammo[2] += 20
Player.ammo[3] += 20
Player.ammo[4] += 20
Player.ammo[5] += 20

if wep > 1
wep -= 1
else
wep = maxwep
}

if keyboard_check_pressed(ord("F"))
{

with enemy
my_health=0;
}

if keyboard_check_pressed(ord("1"))
{
area = 10
subarea = 0
//inverted=true
with enemy
my_health = 0
with instance_create(x,y,Portal) type = 1
}

if keyboard_check_pressed(ord("2"))
{
area = 114
//inverted=true;
subarea = 0
with enemy
my_health = 0
with instance_create(x,y,Portal) type = 1
}

if keyboard_check_pressed(ord("3"))
{
area = 115
subarea = 0
inverted=false;
with enemy
my_health = 0
with instance_create(x,y,Portal) type = 1
}

if keyboard_check_pressed(ord("4"))
{
area = 112
subarea = 0;
inverted = true;
with enemy
my_health = 0
with instance_create(x,y,Portal) type = 1
}
if keyboard_check_pressed(ord("5"))
{
area = 6
subarea = 0
with enemy
my_health = 0
with instance_create(x,y,Portal) type = 1
}
if keyboard_check_pressed(ord("6"))
{
area = 6
subarea = 0
//inverted=false;
with enemy
my_health = 0
with instance_create(x,y,Portal) type = 1
}
if keyboard_check_pressed(ord("7"))
{
area = 109
subarea = 2
inverted=true;
with enemy
my_health = 0
with instance_create(x,y,Portal) type = 1
}if keyboard_check_pressed(ord("8"))
{
area = 8
subarea = 2
with enemy
my_health = 0
with instance_create(x,y,Portal) type = 1
}

if keyboard_check_pressed(ord("9"))
{
area = 8
subarea = 3
with enemy
my_health = 0
with instance_create(x,y,Portal) type = 1
}

if keyboard_check_pressed(ord("0"))
{
area = 9
subarea = 2
with enemy
my_health = 0
with instance_create(x,y,Portal) type = 1
}

//TRAILER CHEAT

if keyboard_check_pressed(ord("L"))
{
subarea = 3
hard += 1
repeat(12)
instance_create(x,y,BigRad)
instance_create(x,y,BigWeaponChest)
with enemy
my_health = 0
with instance_create(x,y,Portal) type = 1
}

if keyboard_check_pressed(ord("V"))
{
instance_create(x,y,IDPDSpawn)
}


if keyboard_check(ord("B"))
{
instance_create(x,y,BigRad);
instance_create(x,y,BigRad);
instance_create(x,y,BigRad);

}

if keyboard_check_pressed(vk_add) {
	hard += 1
}

}

