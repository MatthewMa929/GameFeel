//addingf gravity to the y velocity
y_vel += grav;


y += y_vel;

x += x_vel;

image_angle += rotation_speed;

//destory the target when out of the map
if(y_vel > 0 && y > room_height + sprite_height){
	instance_destroy(id);
	//show_debug_message("destory");
}

//when the target set desotry, act accordingly to juice
if(destory){
	//when particle effect is on
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