
if type = 2
image_angle += 2+sin(image_angle/300)*2+random(1)
else if type = 5
image_angle += 8-sin(image_angle/300)*1
else
image_angle += 8+sin(image_angle/300)*1

time += 1

if type = 2
{
x = room_width/2+sin(image_angle/921)*sin(image_angle/500)*70+sin(image_angle/30)*(20+sin(image_angle/40)*5)+random(2)-1
y = room_height/2+cos(image_angle/583)*sin(image_angle/500)*40+cos(image_angle/30)*(20+sin(image_angle/40)*5)+random(2)-1
}
else
{
x = room_width/2+sin(image_angle/921)*sin(image_angle/500)*80
y = room_height/2+cos(image_angle/583)*sin(image_angle/500)*50
}

if type = 4{
x = room_width/2
y = room_height/2}

if random(4) < 1 and type != 4 && HQ=1
{
if type = 2 or (random(3) < 1)
{
with instance_create(x,y,SpiralDebris)
depth = other.image_angle
}
}


if type = 4 && HQ=1
{
instance_create(x,y,SpiralStar)
}
else if HQ=1
{
with instance_create(x,y,Spiral)
{
image_xscale = 0
image_yscale = 0
depth = other.image_angle
image_angle = other.image_angle
if other.type = 3
{
sprite_index = sprSpiralIDPD
if round(other.time/10) = other.time/10 or round((other.time-1)/10) = (other.time-1)/10
sprite_index = sprSpiralIDPD2
}
if other.type = 2
{
image_xscale = random(0.01)
image_yscale = random(0.01)
sprite_index = sprSpiralProto
image_angle = other.image_angle
//image_angle = random(360)
}
if other.type = 5
{
sprite_index = sprSpiralInverted
//image_angle = random(360)
}
}
}

if !instance_exists(LevCont) and !instance_exists(GenCont) and active = 1
instance_destroy()


















/*
if type = 2
image_angle += 8+sin(image_angle/300)*1
//image_angle += 6+sin(image_angle/300)*2+random(1)
else
image_angle += 8+sin(image_angle/300)*1

time += 1

if type = 2
{
x =room_width/2-sin(image_angle/921)*sin(image_angle/500)*80
y = room_height/2-cos(image_angle/583)*sin(image_angle/500)*50
//x = room_width/2+sin(image_angle/921)*sin(image_angle/500)*75+sin(image_angle/60)*(20+sin(image_angle/40)*5)+random(2)-1*-1
//y = room_height/2+cos(image_angle/583)*sin(image_angle/500)*45+cos(image_angle/60)*(20+sin(image_angle/40)*5)+random(2)-1*-1
}
else
{
x = room_width/2+sin(image_angle/921)*sin(image_angle/500)*80
y = room_height/2+cos(image_angle/583)*sin(image_angle/500)*50
}

if type = 4{
x = room_width/2
y = room_height/2}

if random(4) < 1 and type != 4
{
if type = 2 or (random(3) < 1)
{
with instance_create(x,y,SpiralDebris)
depth = other.image_angle
}
}


if type = 4
{
instance_create(x,y,SpiralStar)
}
else
{
with instance_create(x,y,Spiral)
{
image_xscale = 0
image_yscale = 0
depth = other.image_angle
image_angle = other.image_angle
if other.type = 3
{
sprite_index = sprSpiralIDPD
if round(other.time/10) = other.time/10 or round((other.time-1)/10) = (other.time-1)/10
sprite_index = sprSpiralIDPD2
}
if other.type = 2
{
image_xscale = random(0.01)
image_yscale = random(0.01)
sprite_index = sprSpiralProto
image_angle = other.image_angle
//image_angle = random(360)
}
}
}

if !instance_exists(LevCont) and !instance_exists(GenCont) and active = 1
instance_destroy()

/* */
/*  */
