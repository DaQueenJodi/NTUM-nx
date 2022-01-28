if !place_meeting(x,y,PopoTangle){instance_destroy()}

if instance_exists(Player){
if y < (Player.y-1) {depth=-1}
else {depth=-3}
}

