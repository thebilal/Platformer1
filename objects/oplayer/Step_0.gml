/// @description Insert description here
// You can write your code in this editor
#region
if(hascontrol){
key_left=keyboard_check(vk_left) or keyboard_check(ord("A"));
key_right=keyboard_check(vk_right) || keyboard_check(ord("D"));
key_jump=keyboard_check_pressed(vk_space) or keyboard_check(ord("W"));

if(key_left)||(key_right)||(key_jump)
{
	controller=0;
}	
if(key_jump)
{
	audio_sound_pitch(snd_jump,random_range(0.8,1.2));
	audio_play_sound(snd_jump,1,false);
}
if(abs(gamepad_axis_value(0,gp_axislh))>0.2)
{
	key_left=abs(min(gamepad_axis_value(0,gp_axislh),0));
	key_right=max(gamepad_axis_value(0,gp_axislh),0);
	controller=1;
}

if(gamepad_button_check_pressed(0,gp_face1))
{
	key_jump=1;
	controller=1;
}
}
else{
key_right=0;
key_left=0;
key_jump=0;
}
#endregion
var move = key_right - key_left;
hsp=move*walksp; 
vsp=vsp+grv;

if(place_meeting(x,y+1,owall)) && (key_jump)
{
vsp=-10;	
}


//horizontal collision
if(place_meeting(x+hsp,y,owall))
{
while(!place_meeting(x+sign(hsp),y,owall)){
x=x+sign(hsp);	
}
hsp=0;
}
x=x+hsp;





//vertical collision
if(place_meeting(x,y+vsp,owall))
{
while(!place_meeting(x,y+sign(vsp),owall)){
y=y+sign(vsp);
}
vsp=0;
}

y=y+vsp;

//Animation
if(!place_meeting(x,y+1,owall))
{
	sprite_index=splayera;
	image_speed=0;
	if(vsp>0) image_index=1; else image_index=0;
}
else
{
	image_speed=1;
	if(hsp==0)
	sprite_index=splayer;
	else
	sprite_index=splayerr;
}
if(hsp!=0)
image_xscale=sign(hsp);
