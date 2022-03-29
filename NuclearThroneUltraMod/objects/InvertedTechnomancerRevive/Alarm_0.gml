if instance_exists(Corpse)
{
    if place_meeting(x,y,Corpse)
    {
		with Corpse
		{
		    if place_meeting(x,y,InvertedTechnomancerRevive)
		    {
			    with instance_create(x,y,ReviveFX)
					sprite_index = sprInvertedNecroRevive;
				instance_destroy(id,false);
				with instance_create(x,y,InvertedNecromancer)
				{
					raddrop = 0;
				}
		    }
		}
    }
}

instance_destroy();