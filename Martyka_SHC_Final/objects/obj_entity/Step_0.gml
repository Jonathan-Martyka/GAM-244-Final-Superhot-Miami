/// @description Insert description here
// You can write your code in this editor

	var angleFromPlayer = point_direction(playerObj.x, playerObj.y, x, y);
	var angleToView = angle_difference(playerObj.direction, angleFromPlayer);
	
	
	var lineCheck = collision_line(playerObj.x, playerObj.y, x, y, obj_WallBase, false, true);
	
	if(lineCheck == noone && abs(angleToView) < global.visionAngle/2)
	{
		visible = true;
	}
	else if (point_distance(playerObj.x, playerObj.y, x, y) < 25) {
		visible = true;
	}
	else visible = false;
	