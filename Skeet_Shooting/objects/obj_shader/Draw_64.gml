// Activating the shader
bktglitch_activate();

// Quickly setting all parameters at once using a preset
bktglitch_config_preset(BktGlitchPreset.B);



bktglitch_set_intensity(0.966667);
bktglitch_set_line_shift(0.001333);
bktglitch_set_line_speed(0.000000);
bktglitch_set_line_resolution(0.180000);
bktglitch_set_line_drift(0.026667);
bktglitch_set_line_vertical_shift(0.000000);
bktglitch_set_noise_level(0.293333);
bktglitch_set_jumbleness(0.126667);
bktglitch_set_jumble_speed(1.000000);
bktglitch_set_jumble_resolution(0.053333);
bktglitch_set_jumble_shift(0.013333);
bktglitch_set_channel_shift(0.002667);
bktglitch_set_channel_dispersion(0.003333);
bktglitch_set_shakiness(0.733333);
bktglitch_set_rng_seed(0.026667);

// Drawing the application surface
draw_surface(application_surface, 0, 0);

// Done with the shader (this is really just shader_reset)!
bktglitch_deactivate();