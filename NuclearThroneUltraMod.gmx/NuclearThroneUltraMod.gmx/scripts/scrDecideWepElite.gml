if instance_exists(Player)
{
if UberCont.opt_gamemode=2{
if Player.loops>0
wep=choose(24,79,12,11,234,236,197,127,128);//E Sword, SPC, SuCros, Auto crossy, heavy auto, super heavy auto, dubble super plasma cannon,Eswordgun,SEswordgun
else
wep=choose(24,79,12,11);//E Sword, SPC, SuCros, Auto crossy

}
else{




if Player.race = 8
argument0 += 1

var dir=0;
do {
dir++;
wep=irandom(maxwep-1)+1;

}//wep = round(random(maxwep-1)+1) }
until ( (wep_area[wep] != -1 and wep_area[wep] = Player.hard+argument0)  ||  (Player.hard>16&&wep_area[wep]>16) || dir > 1000)





}}
else
wep = round(random(maxwep-1)+1)

return wep;
