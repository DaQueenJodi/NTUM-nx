/// @description curse
if random(2) > 1 {
	alarm[2] = irandom(16) + 2;
} else {
	alarm[2] = irandom(7) + 1;
}

with instance_create(x + random(10) - 5,y + random(10) - 5,Curse)
	depth = other.depth-1;