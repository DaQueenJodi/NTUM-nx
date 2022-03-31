/// @description curse
alarm[4] = irandom(8) + 2

with instance_create(x + random_range(20,-20),y + random_range(55,-40),Curse)
	depth = other.depth-1;