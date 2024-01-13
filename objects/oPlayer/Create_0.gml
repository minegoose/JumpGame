/// @description 

walkspd = 7
jumpspd = 7

max_fuel = 100
fuel = max_fuel

fuel_waste_rate = 2
fuel_restore_rate = 5

spd = {
	x: 0,
	y: 0
}

move_input = {
	x: 0,
	y: 0
}


grv = {
	x: 0,
	y: .4
}



onGround = function() {
	return place_meeting(x, y + 1, oWall)
}