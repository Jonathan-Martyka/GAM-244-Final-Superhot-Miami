/// @description Insert description here
// You can write your code in this editor
event_inherited();
if(enemyState == "Patrol")
{
	path_speed = moveSpeed * global.TimeSpeed;
	image_angle = direction;
	image_speed = imgSpeed * global.TimeSpeed;
	
	var angleToPlayer = point_direction(x,y,playerObj.x, playerObj.y);
	var angleToView = angle_difference(direction, angleToPlayer);
	
	
	var lineCheck = collision_line(x, y, playerObj.x, playerObj.y, obj_WallBase, false, true);
	
	if(lineCheck == noone && abs(angleToView) < 45)
	{
		enemyState = "Normal";
		path_end();
	}
}
else if(enemyState == "Normal")
{
	image_speed = 0;
	
	fireTimer -= 1 * global.TimeSpeed;
	
	if(fireTimer <= 0)
	{
		enemyState = "Attack";	
		var temp = instance_create_layer(x, y, "Projectiles", obj_bullet_enemy);
		temp.direction = point_direction(x, y, playerObj.x, playerObj.y);
		fireTimer = 30;
	}
	
	direction = point_direction(x, y, playerObj.x, playerObj.y);
	image_angle = direction;
	
}
else if(enemyState == "Attack")
{
	image_speed = imgSpeed * global.TimeSpeed;
	direction = point_direction(x, y, playerObj.x, playerObj.y);
	image_angle = direction;
}
else if(enemyState == "Dead")
{
	sprite_index = spr_enemy_dead_blunt;	
	
	if(dropWeapon == true)
	{
		instance_create_layer(x,y,"Pickups", obj_PistolPickup);	
		dropWeapon = false;
	}
	path_end();
}

