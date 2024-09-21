//set the cursor match the mouse location
x = mouse_x;
y = mouse_y;

//if left mouse clicked, check for hit
if(mouse_check_button_pressed(mb_left)){
	//if the target is hit, desotry it and set correct shake range
	if(place_meeting(x, y, obj_target)){
		var _target = instance_place(x, y, obj_target);
		_target.destory = true;
		obj_screen_shake.shake_range = 7;
	}
	else{
		//reset the small shake range
		obj_screen_shake.shake_range = 2;
	}
	//active the shake correctly
	if(obj_toggle_system.juice_arr[4]){
		obj_screen_shake.shake = true;
		obj_screen_shake.shake_timer = obj_screen_shake.shake_duration;
	}
}

