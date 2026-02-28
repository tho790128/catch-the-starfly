image_xscale += 0.1
image_yscale = image_xscale

image_alpha -= 0.02

if image_alpha <= 0
{
    instance_destroy()
}