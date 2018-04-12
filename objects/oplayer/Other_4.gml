/// @description Insert description here
// You can write your code in this editor
if(file_exists(SAVEFILE)) file_delete(SAVEFILE);
//Create new SAVE
var file;
file=file_text_open_write(SAVEFILE);
file_text_write_real(file,room);
file_text_close(file);
	
	audio_sound_pitch(snd_bgm,random_range(0.8,1.2));
	audio_play_sound(snd_bgm,1,true);
