audio_stop_sound(titlescreen_music);
audio_stop_sound(tutorial_music);
if (!audio_is_playing(trustfall_music)) {
    audio_play_sound(trustfall_music, 1000, true);
}