/// @description Caps the speed CapSpeed(maxSpeed);
/// @param maxSpeed
function CapSpeed(mxSpd) {
	maxSpeed = mxSpd;
	//TODO acceleration??????
	var absXspd = abs(xSpd);
	var absYspd = abs(ySpd);
	if (absXspd+absYspd>maxSpeed)//deltatime
	{
	//xSpd = 500 ySpd = 700; maxSpeed = 1000;
	var currentSpeed = absXspd+absYspd; //1200
	var excessSpeed = currentSpeed - maxSpeed; // 200
	//Where does the excess speed reduce in xSpd and ySpd
	// Percentage = (number you want to find the percentage for ÷ total) × 100
	var percentageXspd = (absXspd / currentSpeed); // 50%ofmaxspeed 40%ofcurrent
	var percentageYspd = (absYspd / currentSpeed); // 70%ofmaxspeed 60%ofcurrent

	absXspd -= percentageXspd*excessSpeed;
	absYspd -= percentageYspd*excessSpeed;

	xSpd=absXspd*sign(xSpd);
	ySpd=absYspd*sign(ySpd);
	}
}
