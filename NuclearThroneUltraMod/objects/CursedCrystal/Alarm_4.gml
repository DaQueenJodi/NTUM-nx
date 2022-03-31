/// @description very fair teleport
alarm[4] = 15 + random(45)

if ammo < 1 && alarm[2] < 1 {
	if instance_exists(Player) {
		var i = 0;
		do {
			i++
			var angle = random(360)
			var length = 5 + random(75)
			var dx = lengthdir_x(length, angle)
			var dy = lengthdir_y(length, angle)
			
			with instance_nearest(x + dx, y + dy, Floor) {
				dx = x + 16
				dy = y + 16
			}
		} until x != dx && y != dy && !place_meeting(dx, dy, Wall) && point_distance(Player.x, Player.y, dx, dy) > 55 || i > 250

		if i <= 250 {
			x = dx
			y = dy
		
			repeat(12)
			with instance_create(x,y,Curse) {
				depth = 1
				var angle = random(360)
				var length = 4 + random(25)
				x += lengthdir_x(length, angle)
				y += lengthdir_y(length, angle)
			}
		}
	} else {
		var angle = random(360)
		var length = 5 + random(75)
		var dx = lengthdir_x(length, angle)
		var dy = lengthdir_y(length, angle)
			
		with instance_nearest(x + dx, y + dy, Floor) {
			other.x = x + 16
			other.y = y + 16
		}
		
		repeat(12)
		with instance_create(x,y,Curse) {
			depth = 1
			var angle = random(360)
			var length = 4 + random(25)
			x += lengthdir_x(length, angle)
			y += lengthdir_y(length, angle)
		}
	}
}
