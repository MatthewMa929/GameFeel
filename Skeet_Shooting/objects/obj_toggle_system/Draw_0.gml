check_box_y = 42
for (i=0;i<array_length(juice_arr);i++){
	if check_box_arr[i].toggled_on {
		draw_set_color(c_blue)
	}
	else {
		draw_set_color(c_gray)
	}
	draw_set_font(ToggleText)
	draw_text(90, check_box_y, juice_labels[i])
	check_box_y += check_box_offset
}