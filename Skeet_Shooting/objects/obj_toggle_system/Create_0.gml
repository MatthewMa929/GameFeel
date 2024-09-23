shoot_animation = false
arm_movement = false
target_particles = false
shader_on = false;
screen_shake = false;
static_effect = false;
sound_effect = false;
combo_tracking = false;
bgm_on = false;

juice_arr = [shoot_animation, arm_movement, target_particles, 
			shader_on, screen_shake, sound_effect, 
			combo_tracking, bgm_on]
juice_labels = ["Shoot Animation", "Arm Movement", "Target Particles",
				"Shader", "Screen Shake",
				"Sound FX", "Combo Tracking", "BGM"]
check_box_arr = []

check_box_y = 32
check_box_offset = 64

for (i=0;i<array_length(juice_arr);i++){
	new_check_box = instance_create_depth(32, check_box_y, -100, obj_check_box)
	new_check_box.index = i
	check_box_y += check_box_offset
	array_push(check_box_arr, new_check_box)
}

