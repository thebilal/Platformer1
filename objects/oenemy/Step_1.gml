/// @description Insert description here
// You can write your code in this editor
if(hp<=0)
{
	with(instance_create_layer(x,y,layer,odead))
	{
		direction=other.hitfrom;
		hsp=lengthdir_x(3,direction);
		vsp=lengthdir_y(3,direction)-2;
		if(sign(hsp)!=0) image_xscale=sign(hsp);
	}
			audio_sound_pitch(snd_death,random_range(0.8,2.2));
	audio_play_sound(snd_death,1,false);
		
		with(oscore) 
		{
		oscore.thescore = oscore.thescore + 5;
		score += oscore.thescore;
		oscore.thescore = 0;
		}
	instance_destroy();
}