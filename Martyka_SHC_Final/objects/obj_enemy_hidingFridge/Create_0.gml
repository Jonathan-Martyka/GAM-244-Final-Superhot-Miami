/// @description Insert description here
// You can write your code in this editor

image_speed = 0;
image_index = 1;

tempRand = random_range(0, 2);

if (tempRand >= 1) {
	isEvil = true;
	playerObj = instance_find(obj_player, 0);
}
else isEvil = false;
