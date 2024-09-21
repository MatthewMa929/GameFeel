shoot_animation = false
static_effect = false
target_particles = false

juice_arr = [shoot_animation, static_effect, target_particles]
juice_labels = ["Shoot Animation", "Static Effect", "Target Particles"]
check_box_arr = []

check_box_y = 32
check_box_offset = 64

for (i=0;i<array_length(juice_arr);i++){
	new_check_box = instance_create_depth(32, check_box_y, -100, obj_check_box)
	new_check_box.index = i
	check_box_y += check_box_offset
	array_push(check_box_arr, new_check_box)
}

