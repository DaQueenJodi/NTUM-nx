pick = 0
canmove = 1

__view_set( e__VW.XView, 0, 0 )
__view_set( e__VW.YView, 0, 0 )
wave = 0


if Player.crownpoints > 0
{
scrCrowns()
dir = 0
repeat(crownmax+1)
{
if dir<10
{with instance_create(__view_get( e__VW.XView, 0 )+18+dir*32,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-50,CrownIcon)//24
crown = other.dir
}
else
{with instance_create(__view_get( e__VW.XView, 0 )+18+(dir-9)*32,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-16,CrownIcon)//24
crown = other.dir
}
dir += 1}
}
else
{
if Player.ultra_got[79] && Player.loops>1// && Player.area=105 && Player.subarea=1
{
scrUnlockCSkin(20,"FOR SUCCESFULLY USING THE INVESTMENT ULTRA",0);
    scrUltras()
    //skill1=79;
    /*Player.ultra_got[79]=0;
    with instance_create(view_xview+view_wview/2,view_yview+view_hview-24,UltraIcon)
    {skill = 79//other.skill1
    ultimategamble=2;
    exceptionclick=true;
    }*/
    scrBusinessHogInvestment();
    if Player.hogpoints<1
    Player.ultra_got[79]=0;
    
    exit;
}
else if (Player.skillsChosen>7)&&(Player.ultra_got[75]==0)//ULTRA! Player.level>9 not skelly redemption ultra a
    {
    //UNLOCK MUTATION DOCTOR/SMITH
    scrUnlockCharacter(25,"FOR GETTING AN ULTRA MUTATION");

if Player.ultra_got[0]=1//&&(Player.skillsChosen>7)
{

scrUltraEHorror();
  
}
else
{
    scrUltras()
    skill1 = 1+((Player.race-1)*4);
    skill2 = 2+((Player.race-1)*4);
    skill3 = 3+((Player.race-1)*4);
    skill4 = 4+((Player.race-1)*4);
    //}
    
    
    if Player.crown != 8
{
    if Player.race=21//horror
    {
    
    with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-64,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,UltraIcon)
    skill = other.skill1
    
    with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-32,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,UltraIcon)
    skill = other.skill2
    
    with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,UltraIcon)
    skill = other.skill3
    
    with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+32,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,UltraIcon)
    skill = other.skill4
    
    with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+64,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,UltraIcon)
    skill = 0
    
    }
    else
    {
    with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-72,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,UltraIcon)
    skill = other.skill1
    
    with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-24,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,UltraIcon)
    skill = other.skill2
    
    with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+24,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,UltraIcon)
    skill = other.skill3
    
    with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+72,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,UltraIcon)
    skill = other.skill4
    }
}
else
{
//CROWN OF DESTINYYYYYYY
if Player.race=21//horror
{
chosenskill=choose(skill1,skill2,skill3,skill4)

with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-24,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,UltraIcon)
{
skill = other.chosenskill}


do{
otherchosenskill=choose(skill1,skill2,skill3,skill4)
}until (otherchosenskill!=chosenskill)

with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+24,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,UltraIcon)
skill = other.otherchosenskill


}
else
{
with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,UltraIcon)
skill = choose(other.skill1,other.skill2,other.skill3,other.skill4);
}

}
}

pick = 0//ehm not necessary
canmove = 1    
exit;    
    
    }//end of the ultra code
    else if Player.ultra_got[75]{//*/ Skelly ultra A redemption patience all da time
    
    scrSkills()//maybe dont run this when ultra
    //27
    skill0=27;//patience

    
    if scrSkillLeft(0,0,0,0)  
    do skill1 = ceil(random(maxskill))
    until Player.skill_got[skill1] = 0
    else
    skill1=32
    
    if scrSkillLeft(0,0,0,skill1)  
    do skill2 = ceil(random(maxskill))
    until skill2 != skill1 and Player.skill_got[skill2] = 0
    else
    skill2=32
    
    if scrSkillLeft(0,0,skill2,skill1)  
    do skill3 = ceil(random(maxskill))
    until skill3 != skill1 and skill3 != skill2 and Player.skill_got[skill3] = 0
    else
    skill3=32
    
    if scrSkillLeft(0,skill3,skill2,skill1)  
    do skill4 = ceil(random(maxskill))
    until skill4 != skill1 and skill4 != skill2 and skill4 != skill3 and Player.skill_got[skill4] = 0
    else
    skill4=32
	
	if scrSkillLeft(skill4,skill3,skill2,skill1)  
    do skill5 = ceil(random(maxskill))
    until skill5 != skill1 and skill5 != skill2 and skill5 != skill3 and skill5 != skill4 and Player.skill_got[skill5] = 0
    else
    skill5=32
    
    }
    else{//*/
    
    scrSkills()//maybe dont run this when ultra
    
    if scrSkillLeft(0,0,0,0)  
    do skill1 = ceil(random(maxskill))
    until Player.skill_got[skill1] = 0
    else
    skill1=32
    
    if Player.heavyheart=3
    {
    skill1=0;
    Player.heavyheart=-999;//never again
    }
    
    if scrSkillLeft(0,0,0,skill1) 
    do skill2 = ceil(random(maxskill))
    until skill2 != skill1 and Player.skill_got[skill2] = 0
    else
    skill2=32
    
    if scrSkillLeft(0,0,skill2,skill1) 
    do skill3 = ceil(random(maxskill))
    until skill3 != skill1 and skill3 != skill2 and Player.skill_got[skill3] = 0
    else
    skill3=32
    
    if scrSkillLeft(0,skill3,skill2,skill1) 
    do skill4 = ceil(random(maxskill))
    until skill4 != skill1 and skill4 != skill2 and skill4 != skill3 and Player.skill_got[skill4] = 0
    else
    skill4=32
    
    
    if scrSkillLeft(skill4,skill3,skill2,skill1) 
    do skill5 = ceil(random(maxskill))
    until skill5 != skill1 and skill5 != skill2 and skill5 != skill3 and skill5 != skill4 and Player.skill_got[skill5] = 0
    else
    skill5=32
    
	if Player.race=21//Horror
    {
		if scrSkillLeft(skill5,skill4,skill3,skill2,skill1) 
	    do skill6 = ceil(random(maxskill))
	    until skill6 != skill1 and skill6 != skill2 and skill6 != skill3 and skill6 != skill4 and skill6 != skill5 and Player.skill_got[skill6] = 0
	    else
	    skill6=32
    }
    
    }


//}


    if Player.crown != 8
    {
    
    if Player.race=21//Horror
    {
    
    with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-112,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,SkillIcon)
    skill = other.skill1
    
    with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-72,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,SkillIcon)
    skill = other.skill2
    
    with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-24,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,SkillIcon)
    skill = other.skill3
    
    with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+24,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,SkillIcon)
    skill = other.skill4
    
    with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+72,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,SkillIcon)
    skill = other.skill5
	
	
	with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+112,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,SkillIcon)
    skill = other.skill6
    
    }
    else{
    if Player.ultra_got[75]//Melting ultra A patience
    {
    with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-96,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,SkillIcon)
    skill = other.skill0
    }
    
    with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-64,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,SkillIcon)
    skill = other.skill1
    
    with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-32,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,SkillIcon)
    skill = other.skill2
    
    with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,SkillIcon)
    skill = other.skill3
    
    with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+32,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,SkillIcon)
    skill = other.skill4
	
	with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+64,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,SkillIcon)
    skill = other.skill5
    }}
    else
    {
    //CROWN OF DESTINYYYYYYY
    if Player.race=21
    {//horror
    
chosenskill=choose(skill1,skill2,skill3,skill4)

with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-24,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,SkillIcon)
skill = other.chosenskill

do{
otherchosenskill=choose(skill1,skill2,skill3,skill4)
}until (otherchosenskill!=chosenskill||otherchosenskill=32)

with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+24,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,SkillIcon)
skill = other.otherchosenskill

    }
    else  
    {
    
    if Player.ultra_got[75]//Melting ultra A patience
    {
    with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+24,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,SkillIcon)
    skill = other.skill0
    }
    
    with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,SkillIcon)
    skill = choose(other.skill1,other.skill2,other.skill3,other.skill4);
    }
    
    }
    if instance_exists(Player)//EXTRA WINGS JOKE!
    {
    if Player.race=18 || Player.race=24
    with SkillIcon
    {
        if skill=2//extra feet
        {
        sprite_index=sprExtraWings;
        image_index=0;
        }
    }
    if (UberCont.opt_gamemode == 24)
	{
		with SkillIcon
			skill = 22;//SHARPSTRESS	
	}
    }
}