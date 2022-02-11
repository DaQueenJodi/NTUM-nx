function scrUltraEHorror() {
	    do{ 
	    skill1 = choose(
	    choose(1,2,3,5,11,14,15,16,21,23,25,26,28,29,34),//choose(other.skill1,other.skill2,other.skill3,other.skill4);
	    choose(41,42,48,50,52,56,57,58,59,62,65,67,68,69,71),
	    choose(77,80,81,82,83,87,88,89,92,95,96,100,37,40)
	    )
	    }
	    until (Player.ultra_got[skill1] = 0)
    
	    do{ 
	    skill2 = choose(
	    choose(1,2,3,5,11,14,15,16,21,23,25,26,28,29,34),//choose(other.skill1,other.skill2,other.skill3,other.skill4);
	    choose(41,42,48,50,52,56,57,58,59,62,65,67,68,69,71),
	    choose(77,80,81,82,83,87,88,89,92,95,96,100,37,40)
	    )
    
	    }
	    until (skill2 != skill1 and Player.ultra_got[skill2] = 0)
    
	    do
	    {
	    skill3 = choose(
	    choose(1,2,3,5,11,14,15,16,21,23,25,26,28,29,34),//choose(other.skill1,other.skill2,other.skill3,other.skill4);
	    choose(41,42,48,50,52,56,57,58,59,62,65,67,68,69,71),
	    choose(77,80,81,82,83,87,88,89,92,95,96,100,37,40)
	    )
	    }
	    until (skill3 != skill1 and skill3 != skill2 and Player.ultra_got[skill3] = 0)
    
	    do
	    {
	    skill4 = choose(
	    choose(1,2,3,5,11,14,15,16,21,23,25,26,28,29,34),//choose(other.skill1,other.skill2,other.skill3,other.skill4);
	    choose(41,42,48,50,52,56,57,58,59,62,65,67,68,69,71),
	    choose(77,80,81,82,83,87,88,89,92,95,96,100,37,40)
	    )
	    }
	    until (skill4 != skill1 and skill4 != skill2 and skill4 != skill3 and Player.ultra_got[skill4] = 0)
		
		do
	    {
	    skill5 = choose(
	    choose(1,2,3,5,11,14,15,16,21,23,25,26,28,29,34),//choose(other.skill1,other.skill2,other.skill3,other.skill4);
	    choose(41,42,48,50,52,56,57,58,59,62,65,67,68,69,71),
	    choose(77,80,81,82,83,87,88,89,92,95,96,100,37,40)
	    )
	    }
	    until (skill5 != skill4 and skill5 != skill1 and skill5 != skill2 and skill5 != skill3 and Player.ultra_got[skill5] = 0)


	if Player.crown!=8
	{

	//HORROR ULTRA E
	if Player.ultra_got[0]
	{
	    with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-112,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,SkillIcon)
	    skill = 27//patience
	}


	with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-72,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,UltraIcon)
	{skill = other.skill1
	}
	with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-24,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,UltraIcon)
	{skill = other.skill2
	}
	with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+24,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,UltraIcon)
	{skill = other.skill3
	}
	with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+72,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,UltraIcon)
	{skill = other.skill4
	}
	if Player.race=21
	{
	with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+112,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,UltraIcon)
	{skill = other.skill5
	}
	}

	}
	else
	{
	//CROWN OF DESTINYYYYYYY
	if Player.race=21
	{
	//HORROR ULTRA E
	if Player.ultra_got[0]
	{
	    with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-32,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,SkillIcon)
	    skill = 27//patience
	}

	with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,UltraIcon)
	skill = other.skill1

	with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+32,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,UltraIcon)
	{skill = other.skill2
	}


	}
	else
	{
	with instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24,UltraIcon)
	skill = choose(other.skill1,other.skill2,other.skill3,other.skill4);
	}

	}   




}
