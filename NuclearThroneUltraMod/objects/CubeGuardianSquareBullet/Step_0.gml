/// @description Rotate
if instance_exists(owner)
{
	distance = lerp(0,maxdistance,min(disLerp,1));
	disLerp += 0.05;
	image_angle = 0;
	if dirStep = 0
	{
		x = lerp(owner.x - distance, owner.x + distance,lerpStep);
		y = owner.y - distance;
		if (lerpStep > 1 || lerpStep < 0)
		{
			if rotationDirection == 1
			{
				dirStep = 1;
				lerpStep = 0;
			}
			else
			{
				dirStep = 3;
				lerpStep = 1;
			}
		}
	}
	else if dirStep == 1
	{
		x = owner.x + distance;
		y = lerp(owner.y - distance, owner.y + distance,lerpStep);
		if (lerpStep > 1 || lerpStep < 0)
		{
			if rotationDirection == 1
			{
				dirStep = 2;
				lerpStep = 0;
			}
			else
			{
				dirStep = 0;
				lerpStep = 1;
			}
		}
	}
	else if dirStep == 2
	{
		x = lerp(owner.x + distance, owner.x - distance,lerpStep);
		y = owner.y + distance;
		if (lerpStep > 1 || lerpStep < 0)
		{
			if rotationDirection == 1
			{
				dirStep = 3;
				lerpStep = 0;
			}
			else
			{
				dirStep = 1;
				lerpStep = 1;
			}
		}
	}
	else if dirStep == 3
	{
		x = owner.x - distance;
		y = lerp(owner.y + distance, owner.y - distance,lerpStep);
		if (lerpStep > 1 || lerpStep < 0)
		{
			if rotationDirection == 1
			{
				dirStep = 0;
				lerpStep = 0;
			}
			else
			{
				dirStep = 2;
				lerpStep = 1;
			}
		}
	}
	if rotationDirection == 1
	{
		lerpStep += min(0.3,rotateSpeed/distance);
		if lerpStep > 1
			lerpStep -= 1;
	}
	else
	{
		lerpStep -= min(0.3,rotateSpeed/distance);
		if lerpStep < 0
			lerpStep += 1;
	}
}
else
{
	instance_destroy();	
}