audio_stop_sound(titlescreen_music);
audio_stop_sound(enemy2_music);
if (!audio_is_playing(climbing_music)) {
    audio_play_sound(climbing_music, 1000, true);
}