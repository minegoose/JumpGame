/// @description

if (place_meeting(x, y, oPlayer)) {
	with (oDoor) {
		if (key_id == other.key_id) {
			open()
		}
	}
	instance_destroy()
}