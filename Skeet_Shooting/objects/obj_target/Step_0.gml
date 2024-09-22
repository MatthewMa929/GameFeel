//addingf gravity to the y velocity
y_vel += grav;

y += y_vel;

x += x_vel;

image_angle += rotation_speed;

//destory the target when out of the map
if(y_vel > 0 && y > room_height + sprite_height){
	global.combo = 0
	instance_destroy(id);
	//show_debug_message("destory");
}

//when the target set desotry, act accordingly to juice
if(destory){
	//when particle effect is on
	if (point){
		global.combo_color = make_color_rgb(r, g, b)
		global.combo += 1
		point = false
	}
	if(obj_toggle_system.juice_arr[2]){
		sprite_index = spr_target_destory;
		x_vel = 0;
		y_vel = 0;
		rotation_speed = 0;
	}
	//destory instantly
	else{
		instance_destroy(id);
	}
}

if(sprite_index == spr_target_destory && image_index = 3){
	if(obj_toggle_system.juice_arr[5]){
		audio_play_sound(snd_hit, 1, false);
	}
};
