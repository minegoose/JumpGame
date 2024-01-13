/// @description

if (place_meeting(x, y, oPlayer)) {
	if (room != room_last)
		room_goto_next()
	
	if(room==room_last) {
		room_goto(room_first)
	}
}