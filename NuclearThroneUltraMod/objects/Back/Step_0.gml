if mouse_x > x and mouse_x < x+48 and mouse_y > y and mouse_y < y+32 and image_index != 6 and mouse_check_button_pressed(mb_left)
{
with Menu
{
snd_play(sndConfirm)
with CharSelect
instance_destroy()
with CrownSelect
instance_destroy()
with MenuGo
instance_destroy()
with Back
instance_destroy()

mode = 1
instance_create(108,room_height-52,MenuCrown)//52
num = 1
dix = 0
diy = 0
repeat(3)
{
repeat(4)
{
with instance_create(16+dix,32+diy,CharSelect)
num = other.num
num += 1
dix += 36
}
dix = 0
diy += 36
}
with instance_create(16+dix,32+diy,CharSelect)
num = 0
}
}

