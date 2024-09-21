x = mouse_x;
y = mouse_y;

if(mouse_check_button_pressed(mb_left)){
	if(place_meeting(x, y, obj_target)){
		var _target = instance_place(x, y, obj_target);
		_target.sprite_index = spr_target_destory;
		_target.destory = true;
	}
}

