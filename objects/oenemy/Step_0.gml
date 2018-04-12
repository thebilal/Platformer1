

vsp=vsp+grv;
//horizontal collision
if(place_meeting(x+hsp,y,owall))
{
while(!place_meeting(x+sign(hsp),y,owall)){
x=x+sign(hsp);	
}
hsp=-hsp;
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
	sprite_index=senemy;
	image_speed=0;
	if(vsp>0) image_index=1; else image_index=0;
}
else
{
	image_speed=1;
	if(hsp==0)
	sprite_index=senemy;
	else
	sprite_index=senemy;
}
if(hsp!=0)
image_xscale=sign(hsp);
