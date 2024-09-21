//decrease the spawn timer by each frame
spawn_timer --;

if(spawn_timer == 0){
	var _spawn_x = choose(-10, -20, -30);
	var _spawn_y = choose(room_height/2, room_height/2 - 10, room_height/2 - 20);
	var _x_val = choose(6, 7, 8, 9);
	var _y_val = choose(-5, -8, -10, -12);
	var _rotation_speed = choose(1, 2, 3, 4);
	var _new_target = instance_create_layer(_spawn_x, _spawn_y, "Instances", obj_target);
	_new_target.x_vel = _x_val;
	_new_target.y_vel = _y_val;
	_new_target.rotation_speed = _rotation_speed;
	
	spawn_timer = spawn_rate;
}

cursor_sprite = spr_cursor;

