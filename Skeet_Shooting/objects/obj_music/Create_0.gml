music_playing = false;  // Music starts off muted
bgm = audio_play_sound(snd_bgm, 1, true);  // Prepare the music in a loop
audio_sound_gain(bgm, 0, 0);  // Start with volume 0 (muted)