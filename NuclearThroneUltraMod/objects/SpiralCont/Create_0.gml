fishx = room_width/2
fishy = room_height/2

image_angle = random(1000)
active = 0

type = 1
//1 = normal 2 = proto 3 = idpd 4= venuz
time = 0

if instance_exists(Player)
{
if Player.area = 100
type = 2
if Player.area = 103
type = 4
if Player.area = 105|| Player.area = 106
type=5;
}



repeat(60)//(200)
{
with SpiralCont
event_perform(ev_step,0)

with Spiral
event_perform(ev_step,0)

with SpiralDebris
event_perform(ev_step,0)

with SpiralStar
event_perform(ev_step,0)
}

active = 1

