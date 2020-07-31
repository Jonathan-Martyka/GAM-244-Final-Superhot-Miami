/// @description Insert description here
// You can write your code in this editor

if (activeREM == false && global.REMCount > 0 && !rubberBanding) {
	previousVisionAngle = global.visionAngle;
	newAngle = 360;
	activeREM = true;
	global.REMCount--;
	
	alarm_set(0, 1);
}