/// @description Insert description here
// You can write your code in this editor

if (isEvil) {
	var angleFromPlayer = point_direction(playerObj.x, playerObj.y, x, y);
	var angleToView = angle_difference(playerObj.direction, angleFromPlayer);
	
	
	var lineCheck = collision_line(playerObj.x, playerObj.y, x, y, obj_WallBase, false, true);
	
	if(lineCheck == noone && !(abs(angleToView) < global.visionAngle/2) && point_distance(playerObj.x, playerObj.y, x, y) < 75) {
		image_index = 0;
		isEvil = false;
		
		if (direction == 0) instance_create_layer(x, y+20, "Enemy", obj_enemy_bat);
		else if (direction == 90) instance_create_layer(x+20, y, "Enemy", obj_enemy_bat);
		else if (direction == 180) instance_create_layer(x, y-20, "Enemy", obj_enemy_bat);
		else instance_create_layer(x-20, y, "Enemy", obj_enemy_bat);
		
	}
	
	
}
