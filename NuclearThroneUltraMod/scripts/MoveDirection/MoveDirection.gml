/// @description MoveDirection(direction,speed)
/// @param direction
/// @param speed
function MoveDirection(dirr, speedd) {
	direction = dirr;
	var spd = speedd;
	xSpd+=dcos(direction)*spd;
	ySpd-=dsin(direction)*spd;
}
