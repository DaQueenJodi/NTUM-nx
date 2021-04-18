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


if Player.crown!=8
{


with instance_create(view_xview+view_wview/2-72,view_yview+view_hview-24,UltraIcon)
{skill = other.skill1
}
with instance_create(view_xview+view_wview/2-24,view_yview+view_hview-24,UltraIcon)
{skill = other.skill2
}
with instance_create(view_xview+view_wview/2+24,view_yview+view_hview-24,UltraIcon)
{skill = other.skill3
}
with instance_create(view_xview+view_wview/2+72,view_yview+view_hview-24,UltraIcon)
{skill = other.skill4
}

}
else
{
//CROWN OF DESTINYYYYYYY

with instance_create(view_xview+view_wview/2,view_yview+view_hview-24,UltraIcon)
skill = choose(other.skill1,other.skill2,other.skill3,other.skill4);

}   


Player.hogpoints-=1

