///scrApplyEagleEyes();
// /@description
///@param
function scrApplyEagleEyes(){
	with Player
	{
		if race=25
		{
			accuracy = standartAccuracy*0.24//0.3//in case you have build up rage use the standart
			standartAccuracy = accuracy//new standart
		}
		else
		{
			accuracy = standartAccuracy*0.28//0.38//in case you have build up rage use the standart
			standartAccuracy = accuracy//new standart
		}
	}
}