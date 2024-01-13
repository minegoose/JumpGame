/// @description

global.dead = false


var wall_top = instance_create_layer(0, -64, "Instances", oWall)
wall_top.image_xscale = room_width/64

var wall_bottom = instance_create_layer(0, room_height, "Instances", oWall)
wall_bottom.image_xscale = room_width/64

var wall_left = instance_create_layer(-64, 0, "Instances", oWall)
wall_left.image_yscale = room_height/64

var wall_right = instance_create_layer(room_width, 0, "Instances", oWall)
wall_right.image_yscale = room_height/64