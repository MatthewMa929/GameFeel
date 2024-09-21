//set the target to the same with the cursor
var target_x = mouse_x;
var target_y = mouse_y;

//calculate how much does the cursor shift from the center base
var offset_x = target_x - base_x;
var offset_y = target_y - base_y;

//ensure the offset that is going to move within range
offset_x = clamp(offset_x, -max_x_offset, max_x_offset);
offset_y = clamp(offset_y, -max_y_offset, max_y_offset);

//move the gun sprite smoothly
if(obj_toggle_system.juice_arr[1]){
	x += (offset_x - (x - base_x)) * smooth_factor;
	y += (offset_y - (y - base_y)) * smooth_factor;
}
else{
	x = 490;
	y = 490;
}

//player animaiton after clicking
if(mouse_check_button_pressed(mb_left)){
	if(obj_toggle_system.juice_arr[0]){
		image_speed = 1;
	}
	
	if(obj_toggle_system.juice_arr[6]){
		audio_play_sound(snd_gun_shot, 1, false);
	}
}


