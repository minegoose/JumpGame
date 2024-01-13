/// @description 

if (keyboard_check(ord("1"))) {
	game_set_speed(5, gamespeed_fps)
}

if (keyboard_check(ord("2"))) {
	game_set_speed(60, gamespeed_fps)
}

if (keyboard_check_pressed(ord("R"))) {
	room_restart()
}

if (keyboard_check_pressed(vk_escape)) {
	game_end()
}

if (keyboard_check_pressed(ord("9"))) {
	if (room != room_last)
		room_goto_next()
}

if (keyboard_check_pressed(ord("8"))) {
	if (room_previous(room) != rInit)
		room_goto_previous()
}