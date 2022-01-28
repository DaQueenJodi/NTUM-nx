friction = 0.4
image_speed = 0.4
if instance_exists(Player){
if Player.race=13{
if Player.ultra_got[52]{
friction=0.22;}}}

canspawnportal=true;

enemynumber=0;

with IDPDVan
{
if alarm[1]<1
other.enemynumber++;
else
other.alarm[0]=alarm[1]+2;

}

