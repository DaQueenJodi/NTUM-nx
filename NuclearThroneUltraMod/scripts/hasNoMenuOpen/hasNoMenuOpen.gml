///hasNoMenuOpen();
// /@description
///@param
function hasNoMenuOpen(){
	return ((instance_exists(OptionSelect) && OptionSelect.selected == 0)
 && (instance_exists(StatsSelect) && StatsSelect.selected == 0) 
 && (instance_exists(OptionSelect2) && OptionSelect2.selected == 0)
 && (instance_exists(CreditsSelect) && CreditsSelect.selected == 0)
 && (instance_exists(UpdateSelect) && UpdateSelect.selected == 0));
}