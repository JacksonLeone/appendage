audio_stop_sound(titlescreen_music);
audio_stop_sound(trustfall_music);
if (!audio_is_playing(enemy1_music)) {
    audio_play_sound(enemy1_music, 1000, true);
}