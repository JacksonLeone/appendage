audio_stop_all();
if (!audio_is_playing(titlescreen_music)) {
    audio_play_sound(titlescreen_music, 1000, true);
}