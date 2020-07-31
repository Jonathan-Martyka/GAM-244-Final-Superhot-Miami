/// @description Insert description here
// You can write your code in this editor

if (bouncesLeft <= 0) instance_destroy();

if (canBounceH) {
	if (direction >= 0 && direction <= 90) direction = 90 + (90 - direction);
	else if(direction > 90 && direction < 180) direction = 90 - (direction - 90);
	else if(direction >= 180 && direction <= 270) direction = 270 + (270 - direction);
	else if(direction > 270 && direction < 360) direction = 270 - (direction - 270);
	canBounceH = false;
	bouncesLeft--;
	alarm_set(1, 5);
}
