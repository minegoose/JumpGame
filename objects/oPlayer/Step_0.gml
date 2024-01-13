/// @description 

if (global.dead) {
	kup = 0
	kleft = 0
	kdown = 0
	kright = 0
	
	kjump = 0
}
else {
	kup = keyboard_check(ord("W"))
	kleft = keyboard_check(ord("A"))
	kdown = keyboard_check(ord("S"))
	kright = keyboard_check(ord("D"))

	kjump = keyboard_check(vk_space)
}


if (onGround()) {
	fuel += fuel_restore_rate
	if (fuel > max_fuel)
		fuel = max_fuel
}


move_input.x = kright - kleft
move_input.y = kdown - kup

spd.x = walkspd * move_input.x

spd.x += grv.x
spd.y += grv.y

if (kjump) {
	fuel -= fuel_waste_rate
	fuel = max(0, fuel)
	
	if (fuel > 0)
		spd.y = -jumpspd
}


if (place_meeting(x + spd.x, y, oWall)) {
	var dx = sign(spd.x)
	while(not place_meeting(x + dx, y, oWall)) {
		x += dx
	}
	spd.x = 0
}
x += spd.x


if (place_meeting(x, y + spd.y, oWall)) {
	var dy = sign(spd.y)
	while(not place_meeting(x, y + dy, oWall)) {
		y += dy
	}
	spd.y = 0
}
y += spd.y