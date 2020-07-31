/// @description Insert description here
// You can write your code in this editor
event_inherited();

speed = moveSpeed * global.TimeSpeed;

trailTimer -= 0.05 * global.TimeSpeed;
if(trailTimer <= 0)
{
	instance_create_layer(x,y,"Particles", obj_bulletTrail);
	trailTimer = 0.1;
}