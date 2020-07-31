/// @description Insert description here
// You can write your code in this editor

if (newAngle > global.visionAngle) {
	
	global.visionAngle += 5;
	
	
} else if (newAngle < global.visionAngle) {
	
	global.visionAngle -= 5;
	
	
}

if (abs(global.visionAngle - newAngle) < 5) {
	global.visionAngle = newAngle;
	if (activeREM == true) alarm_set(1, 150);
	rubberBanding = false;
} else alarm_set(0, 1);