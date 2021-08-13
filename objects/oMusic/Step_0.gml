/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
if(global.sound)
{
	audio_group_set_gain(background, 0.4, 1);
	audio_group_set_gain(sound_effects, 0.2, 1);
}
else
{
	audio_group_set_gain(background, 0, 1);
	audio_group_set_gain(sound_effects, 0, 1);
}
themePitch += 0.000005;
audio_sound_pitch(mTheme, themePitch);
