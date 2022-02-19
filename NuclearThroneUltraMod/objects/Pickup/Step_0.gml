if instance_exists(Player) && !cursed {
    if instance_exists(ProtoStatue) and speed = 0 {
        if point_distance(x, y, ProtoStatue.x, ProtoStatue.y) < 180 and(Player.ultra_got[12] == 1 || collision_line(x, y, ProtoStatue.x, ProtoStatue.y, Wall, 0, 0) < 0) {
            if place_free(x + lengthdir_x(12, point_direction(x, y, ProtoStatue.x, ProtoStatue.y)), y)
            x += lengthdir_x(12, point_direction(x, y, ProtoStatue.x, ProtoStatue.y))
            if place_free(x, y + lengthdir_y(12, point_direction(x, y, ProtoStatue.x, ProtoStatue.y)))
            y += lengthdir_y(12, point_direction(x, y, ProtoStatue.x, ProtoStatue.y))
        } else if speed = 0 {
            if point_distance(x, y, Player.x, Player.y) < 75 + Player.betterpluto or instance_exists(Portal) {
                if place_free(x + lengthdir_x(12, point_direction(x, y, Player.x, Player.y)), y)
                x += lengthdir_x(12, point_direction(x, y, Player.x, Player.y))
                if place_free(x, y + lengthdir_y(12, point_direction(x, y, Player.x, Player.y)))
                y += lengthdir_y(12, point_direction(x, y, Player.x, Player.y))

                isGettingSucked = true;
            }
            else
                isGettingSucked = false;
        }

    }
    else if speed = 0 {
        if point_distance(x, y, Player.x, Player.y) < 75 + Player.betterpluto or instance_exists(Portal) {
            if place_free(x + lengthdir_x(12, point_direction(x, y, Player.x, Player.y)), y)
            x += lengthdir_x(12, point_direction(x, y, Player.x, Player.y))
            if place_free(x, y + lengthdir_y(12, point_direction(x, y, Player.x, Player.y)))
            y += lengthdir_y(12, point_direction(x, y, Player.x, Player.y))

            isGettingSucked = true;
        }
        else if instance_exists(Implosion) and speed = 0 {
            if point_distance(x, y, Implosion.x, Implosion.y) < 80 or instance_exists(Portal) {
                if place_free(x + lengthdir_x(12, point_direction(x, y, Implosion.x, Implosion.y)), y)
                x += lengthdir_x(12, point_direction(x, y, Implosion.x, Implosion.y))
                if place_free(x, y + lengthdir_y(12, point_direction(x, y, Implosion.x, Implosion.y)))
                y += lengthdir_y(12, point_direction(x, y, Implosion.x, Implosion.y))
            }
        }
        else
            isGettingSucked = false;
    }


}

if image_index < 1
image_index += random(0.04)
else
    image_index += 0.4
