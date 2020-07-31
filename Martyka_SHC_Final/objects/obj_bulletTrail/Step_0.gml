/// @description Insert description here
// You can write your code in this editor
event_inherited();

if(image_xscale > 0.01)
{
	image_alpha -= 0.05* global.TimeSpeed;
	image_xscale -= 0.05* global.TimeSpeed;
	image_yscale -= 0.05* global.TimeSpeed;
}
else
{
	instance_destroy();	
}