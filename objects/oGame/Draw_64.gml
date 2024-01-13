/// @description

if (global.dead) {
	var w = display_get_gui_width()
	var h = display_get_gui_height()
	
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_font(fDead)
	draw_text(w/2, h/2, "Нажми R чтобы начать заново")
}