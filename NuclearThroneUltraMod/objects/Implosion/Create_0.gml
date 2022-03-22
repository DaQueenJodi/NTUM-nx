friction = 0.09;
kraken=false;
image_speed = 0.4

offx = random(2)-1
offy = random(2)-1

if Player.skill_got[17] = 1{
dmg=10+(Player.betterlaserbrain*2);}
else{
dmg=5;}//contact damage

typ = 1 
alarm[0]=30;//Before storm start
snd_loop(sndPortalLoop)

