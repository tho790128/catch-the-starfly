image_angle += 1
image_xscale -= 0.01
image_yscale -= 0.01
x += lengthdir_x(0.5,dir)
y += lengthdir_y(0.5,dir)
temp--
if temp <= 0
{
    instance_destroy()
}