audio_stop_sound(titlescreen_music);
audio_stop_sound(climbing_music);
if (!audio_is_playing(mouth_music)) {
    audio_play_sound(mouth_music, 1000, true);
}