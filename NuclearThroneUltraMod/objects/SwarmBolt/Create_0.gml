event_inherited();
friction=0.2;
//friction = 0.6
typ = 2 //0 = normal, 1 = deflectable, 2 = destructable


target=0;

hits=6;
if instance_exists(Player){
if Player.skill_got[21] = 1//bolt marrow
{
hits=3;
friction+=0.1;
}
if Player.skill_got[19]//eagle eyes
hits+=1;

alarm[0]=6

}


