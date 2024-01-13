
x=oPlayer.x
y=oPlayer.y
if mouse_check_button_pressed(mb_left){
		bu = instance_create_layer(x, y, "Instances", oBullet)
		bu.direction = point_direction(x, y, mouse_x, mouse_y)
		bu.image_angle = point_direction(x, y, mouse_x, mouse_y)
		bu.speed = 10
}

