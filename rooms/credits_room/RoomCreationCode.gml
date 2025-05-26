audio_stop_all();
if (!audio_is_playing(victory_music)) {
    audio_play_sound(victory_music, 1000, true);
}