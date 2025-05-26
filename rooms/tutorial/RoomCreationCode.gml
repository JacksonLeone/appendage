audio_stop_sound(titlescreen_music);
if (!audio_is_playing(tutorial_music)) {
    audio_play_sound(tutorial_music, 1000, true);
}