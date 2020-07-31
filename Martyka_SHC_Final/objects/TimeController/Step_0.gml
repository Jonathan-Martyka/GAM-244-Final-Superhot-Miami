/// @description Insert description here
// You can write your code in this editor

if(abs(playerObj.xspeed) > 0 || abs(playerObj.yspeed) > 0)
{
	global.TimeSpeed = clamp(global.TimeSpeed + 0.20, 0.10, 1);
}
else if(playerObj.pState == "Attack")
{
	global.TimeSpeed = clamp(global.TimeSpeed + 0.20, 0.10, 1);
}
else
{
	global.TimeSpeed = clamp(global.TimeSpeed - 0.20, 0.10, 1);
}