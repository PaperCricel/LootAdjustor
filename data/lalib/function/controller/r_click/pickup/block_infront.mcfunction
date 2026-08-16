
execute align xyz run tp @s ~0.5 ~0.5 ~0.5 ~ ~
execute positioned ^ ^ ^0.5 align xyz positioned ~0.5 ~0.5 ~0.5 positioned ^ ^ ^0.001 facing entity @s eyes run rotate @s ~ ~

# if (user pitch < 45) :
execute at @s if entity @a[tag=lalib.controller.r_click.pickup,x_rotation=0..44.9,limit=1] run rotate @s ~ 0