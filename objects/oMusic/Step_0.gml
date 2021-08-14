audio_group_set_gain(background, 0.2, 0);
audio_group_set_gain(sound_effects, 1, 0);

themePitch += 0.000005;
audio_sound_pitch(mTheme, themePitch);

if(global.multiplayer) audio_sound_gain(mBoost, 1, 0);