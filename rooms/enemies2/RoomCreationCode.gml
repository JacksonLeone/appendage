audio_stop_sound(titlescreen_music);
audio_stop_sound(enemy1_music);
if (!audio_is_playing(enemy2_music)) {
    audio_play_sound(enemy2_music, 1000, true);
}