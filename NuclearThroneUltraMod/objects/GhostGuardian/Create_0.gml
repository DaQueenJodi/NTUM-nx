raddrop = 11
maxhealth = 54
meleedamage = 5
size = 3

event_inherited()

spr_idle = sprGhostGuardianWalk;
spr_walk = sprGhostGuardianWalk;
spr_hurt = sprGhostGuardianHurt;
spr_dead = sprGhostGuardianDead;


//behavior
alarm[1] = 30+random(90)
direction = random(360);
friction = 1.5;
goForIt = false;
instance_create(x,y,WallBreak);
depth = -12;
var loops = GetPlayerLoops();
var i = 0;
var myCompanions = [];
var amountOfProjectiles = 3;
amountOfProjectiles += min(loops,4);
for (var i = 0; i < amountOfProjectiles; i++) {
	myCompanions[i] = instance_create(x,y,GhostGuardianBullet);
}

var angle = random(360);
var angleStep = 360/amountOfProjectiles;

var rotSpeed = 5;
rotSpeed += min(4,loops);
i = 0;
var dis = 32;
dis += min(16,loops*4);
var rotationdir = choose(1,-1);
var idd = id;
var ox = x;
var oy = y;
//Euphoria
if instance_exists(Player)
{
if Player.skill_got[12] = 1
{
	rotSpeed = rotSpeed*0.7
	dis -= 4;
}
}
for (var i = 0; i < amountOfProjectiles; i++) {
	with myCompanions[i]
	{
		owner = idd;
		ownerAngle = angle;
		rotationDirection = rotationdir;
		ownerAngleRotationSpeed = rotSpeed;
		distance = dis;
		x = ox + lengthdir_x(distance,ownerAngle);
		y = oy + lengthdir_y(distance,ownerAngle);
	}
	angle += angleStep;
}
maxSpeed = 4.6 + min(2,loops);
acc = 1.9 + min(0.4,loops*0.18);//This acceleration is the scary variable