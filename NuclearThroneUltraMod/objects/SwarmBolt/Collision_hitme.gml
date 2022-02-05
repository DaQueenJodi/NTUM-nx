if speed > 1 and other.team != team
{

with other
{
if sprite_index!=spr_hurt|| (team!= 2 && random(30)<1){
	my_health -= other.dmg//9//20
	sprite_index = spr_hurt
	image_index = 1;
	motion_add(other.direction,4)
	other.hits-=1;
	snd_play(snd_hurt, hurt_pitch_variation)
		with other{
		motion_add(direction+180,8);
		//move_contact_solid(direction+180,8);
		}
    }
}

}

