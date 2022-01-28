if other.team != team
{instance_destroy()

if instance_exists(Player){
if (Player.ultra_got[17]=1){

var Randomx;
var Randomy;
instance_create(x,y,Tangle)

do {
Randomx=random(100)-50;
Randomy=random(100)-50;
   if(collision_point(x+Randomx,y+Randomy,Floor,true,true))
    {
    instance_create(x+Randomx,y+Randomy,Tangle);
    }
}
until (instance_number(Tangle)>6)
}
else{instance_create(x,y,Tangle)}}
instance_create(x,y,Dust)}

