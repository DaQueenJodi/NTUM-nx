/// @description Create the walls around it
if !place_meeting(x-16,y,Floor)
instance_create(x-16,y,Wall)


if !place_meeting(x+16,y,Floor)
instance_create(x+16,y,Wall)


if !place_meeting(x,y+16,Floor)
instance_create(x,y+16,Wall)


if !place_meeting(x,y-16,Floor)
instance_create(x,y-16,Wall)


if !place_meeting(x-16,y+16,Floor)
instance_create(x-16,y+16,Wall)


if !place_meeting(x+16,y-16,Floor)
instance_create(x+16,y-16,Wall)


if !place_meeting(x+16,y+16,Floor)
instance_create(x+16,y+16,Wall)


if !place_meeting(x-16,y-16,Floor)
instance_create(x-16,y-16,Wall)
