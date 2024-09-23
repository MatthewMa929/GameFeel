// Check if the checkbox state has changed
if (obj_toggle_system.juice_arr[7] && !music_playing)
{
    // Unmute the music if the checkbox is checked and music isn't playing
    audio_sound_gain(bgm, 1, 0);  // Set volume to 1 (full volume)
    music_playing = true;  // Update the flag
}
else if (!obj_toggle_system.juice_arr[7] && music_playing)
{
    // Mute the music if the checkbox is unchecked and music is playing
    audio_sound_gain(bgm, 0, 0);  // Set volume to 0 (mute)
    music_playing = false;  // Update the flag
}