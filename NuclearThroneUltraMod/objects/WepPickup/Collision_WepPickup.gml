/// @description YellowAfterlife's Wepcollision
if (speed < 4) {
    var dx = x - other.x;
    var dy = y - other.y;
    if (dx != 0 || dy != 0) {
        var dd = sqrt(dx * dx + dy * dy);
        motion_add(point_direction(0, 0, dx, dy), clamp(1 - dd / 28, 0, 1) * 2);
    } else motion_add(random(360), 2);
}

