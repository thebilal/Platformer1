/// @description Insert description here
// You can write your code in this editor
x=oplayer.x;
y=oplayer.y+10;
if(oplayer.controller == 0){
image_angle=point_direction(x,y,mouse_x,mouse_y);

}
else{
var controllerv=gamepad_axis_value(0,gp_axisrv);
var controllerh=gamepad_axis_value(0,gp_axisrh);
if(controllerh>0.2)||(controllerv>0.2){
controllerangle=point_direction(0,0,controllerh,controllerv);	
}
	image_angle=controllerangle;
}

firingdelay=firingdelay-1;
recoil=max(0,recoil-1);
if(mouse_check_button(mb_left)||gamepad_button_check(0,gp_shoulderrb)) and (firingdelay<0)
{
	recoil=4;
	firingdelay=5;
	audio_sound_pitch(snd_shot,random_range(0.8,1.2));
	audio_play_sound(snd_shot,1,false);
	ScreenShake(5,10);
	with(instance_create_layer(x,y,"bullet",obullet))
	{
		speed=35;
		direction=other.image_angle+random_range(3,-3);
		image_angle=direction;	
	}
}

x=x-lengthdir_x(recoil,image_angle);
y=y-lengthdir_y(recoil,image_angle);
if(image_angle<90) and (image_angle<270){
image_yscale=-1;	
	
}
else{
	image_yscale=1;
}