if instance_exists(Player)
{
//progression
alarm[4]=600;//10 seconds
vanCome1=random_range(0.2,0.8);
if (    UberCont.loops>0 && Player.subarea!=3 && (Player.area!=6&&Player.subarea!=2) && (Player.area!=7 && Player.subarea!=2) && (Player.area!=112&&Player.subarea!=2) && (Player.area!=108 && Player.subarea!=2)   )//no bosses
canspawnvan1=true;
else
canspawnvan1=false;

/*
test van
canspawnvan1 = true;
canspawnvan2 = true;
canspawnvan3 = true;
canspawnvan4 = true;
canspawnvan5 = true;
*/

vanCome2=random_range(0.2,0.8);
if (    UberCont.loops>1  && Player.subarea!=3 && (Player.area!=6&&Player.subarea!=2) && (Player.area!=7 && Player.subarea!=2)   )//no bosses
canspawnvan2=true;
else
canspawnvan2=false;

vanCome3=random_range(0.2,0.8);
if (    UberCont.loops>2  && Player.subarea!=3 && (Player.area!=6&&Player.subarea!=2) && (Player.area!=7 && Player.subarea!=2)   )//no bosses
canspawnvan3=true;
else
canspawnvan3=false;

vanCome4=random_range(0.2,0.8);
if (    UberCont.loops>3  && Player.subarea!=3 && (Player.area!=6&&Player.subarea!=2) && (Player.area!=7 && Player.subarea!=2)   )//no bosses
canspawnvan4=true;
else
canspawnvan4=false;

vanCome5=random_range(0.2,0.8);
if (    Player.crown=16  && Player.subarea!=3 && (Player.area!=6&&Player.subarea!=2) && (Player.area!=7 && Player.subarea!=2)   )//no bosses
canspawnvan5=true;
else
canspawnvan5=false;

if UberCont.opt_gamemode=18 || UberCont.opt_gamemode=9//no elite idpd
{
canspawnvan1=false
canspawnvan2=false
canspawnvan3=false
canspawnvan4=false
//canspawnvan5=false
}



if Player.ultra_got[82]
{
alarm[3]=60;
//maxEnemyHealthInLevel=0;
}

}

