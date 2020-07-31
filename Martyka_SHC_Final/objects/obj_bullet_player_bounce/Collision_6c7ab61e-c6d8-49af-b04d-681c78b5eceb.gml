/// @description Insert description here
// You can write your code in this editor

if (bouncesLeft <= 0) instance_destroy();

if (canBounceV) {
	if (direction >= 0 && direction <= 180) direction = 360 - direction;
	else if(direction > 180 && direction < 360) direction = 180 - (direction - 180);
	canBounceV = false;
	bouncesLeft--;
	alarm_set(0, 5);
}