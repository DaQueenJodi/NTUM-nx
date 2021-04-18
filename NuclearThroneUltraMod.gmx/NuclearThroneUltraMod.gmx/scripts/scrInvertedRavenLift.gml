/// scrRavenLift()
var dir;
if (nofly <= 0) {
    repeat (6) with (instance_create(x + random(16) - 8, y + random(16), Dust)) motion_add(random(360), 3 + random(1));
    if (x > view_xview[0] && y > view_yview[0] && x < view_xview[0] + view_wview[0] && y < view_yview[0] + view_hview[0]) snd_play(sndRavenLift);
    z = 0;
    scrTarget();
    if (target > 0 && target.object_index=Player) {
        var mp = target.p - 1;
        var mx = mouse_x;
        var my = mouse_y;
        var tries = 1024;
        while (--tries >= 0) {
            targetx = x + lengthdir_x(128, point_direction(mx, my, target.x, target.y) + random(50) - 25);
            targety = y + lengthdir_y(128, point_direction(mx, my, target.x, target.y) + random(50) - 25);
            dir = instance_nearest(targetx, targety, Floor);
            targetx = dir.x + 16 + random(96) - 48;
            targety = dir.y + 16 + random(96) - 48;
            dir = instance_nearest(targetx, targety, Floor);
            targetx = dir.x;
            targety = dir.y;
            if (dir.object_index == Floor) {
                targetx += random_range(10, 22);
                targety += random_range(10, 22);
            } else {
                targetx += 8;
                targety += 8;
            }
            if (place_free(targetx, targety)) break;
        }
        //if (tries >= 0 && point_distance(x, y, targetx, targety) > 16) {
            image_index = 0;
            nofly = 50;
            instance_change(InvertedRavenFly, false);
        //}
    }
}
