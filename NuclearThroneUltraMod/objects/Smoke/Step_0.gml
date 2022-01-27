image_xscale += growspeed
image_yscale += growspeed

growspeed -= 0.001
image_angle += rot

if image_xscale < 0.1
instance_destroy()

