//addingf gravity to the y velocity
y_vel += grav;


y += y_vel;

x += x_vel;

image_angle += rotation_speed;


if(y_vel > 0 && y > room_height + sprite_height){
	instance_destroy(id);
	show_debug_message("destory");
}

if(destory){
	x_vel = 0;
	y_vel = 0;
	rotation_speed = 0;
}