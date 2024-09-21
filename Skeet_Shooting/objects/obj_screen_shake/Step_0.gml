//reset the shake state to false when 0 timer is 0
if(shake_timer == 0){
	shake = false;
}

if(shake){
	shake_timer --;
	//shake the cemera
	camera_set_view_pos(view_camera[0], 
	view_x + random_range(-shake_range, shake_range), 
	view_y + random_range(-shake_range, shake_range));	
}
else{
	//reset the camera
	camera_set_view_pos(view_camera[0],view_x, view_y);
}