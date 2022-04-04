event_inherited()
audio_emitter_position(emitter,x,y,depth);
if target > 0
{
	var lerpp = lp;
	if alarm[4] > 0
		lerpp = 1;
	x += ((target.x + lengthdir_x(distanceToTarget,angle))-x)*lerpp;
	y += ((target.y + lengthdir_y(distanceToTarget,angle))-y)*lerpp;
	angle += rotationSpeed; 
	if target.x < x
		right = -1
	else if target.x > x
		right = 1
	if alarm[4] > 0
	{
		//Spin attack
		var dir = point_direction(x,y,target.x,target.y);
		var odis = spinAttackDistance;
		var xx = x + lengthdir_x(odis,dir+90);
		var yy = y + lengthdir_y(odis,dir+90);
		with instance_create(xx,yy,EnemyBullet1Square)
        {
        motion_add(dir,other.pSpeedSpinny)
        image_angle = direction
        team = other.team
        }
		xx = x + lengthdir_x(odis,dir-90);
		yy = y + lengthdir_y(odis,dir-90);
		with instance_create(xx,yy,EnemyBullet1Square)
        {
        motion_add(dir,other.pSpeedSpinny)
        image_angle = direction
        team = other.team
        }
	}
}
if speed > 3
speed = 3;
