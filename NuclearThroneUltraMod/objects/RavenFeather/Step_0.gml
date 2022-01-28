hspeed=(cos(COS)*SCALE) - ( (cos(COS)*SCALE)*0.5);


if ANGLEDIR
image_angle+=ROTATIONSPEED;
else
image_angle-=ROTATIONSPEED;


SCALE-=0.04;
if SCALE<=0
SCALE=0;


/*yy+=1;
xx+=XSPEED;


if COSDIR
COS+=1;
else
COS+=1;

if SINDIR
SIN+=1;
else
SIN-=1;

y=yy+cos(COS)*SCALE ;
x=xx+sin(SIN)*SCALE ;

SCALE-=0.01;

if SCALE<=0
SPEED=0;

if ANGLEDIR
image_angle+=ROTATIONSPEED;
else
image_angle-=ROTATIONSPEED;

SPEED-=0.01;

/* */
/*  */
