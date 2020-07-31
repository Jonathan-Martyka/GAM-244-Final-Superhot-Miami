/// @description Insert description here
// You can write your code in this editor
event_inherited();


if(enemyState == "Normal")
{
	
	var lineCheck = collision_line(x, y, playerObj.x, playerObj.y, obj_WallBase, false, true);

	if(lineCheck == noone)
	{
		sprite_index = spr_enemy_bat_walk;
		speed = 2 * global.TimeSpeed;
		direction = point_direction(x, y, playerObj.x, playerObj.y);
		image_angle = direction;
		image_speed = imgSpeed * global.TimeSpeed;
		
		if(point_distance(playerObj.x, playerObj.y, x, y) < 50 )
		{
			enemyState = "Attack";
			image_index = 0;
		}
	}
	else
	{
		speed = 0;
		image_speed = 0;
	}
}
else if(enemyState == "Attack")
{
	sprite_index = spr_enemy_bat_attack;
	speed = 0;
	direction = point_direction(x, y, playerObj.x, playerObj.y);
	image_angle = direction;
	image_speed = imgSpeed * global.TimeSpeed;
	
	if(point_distance(playerObj.x, playerObj.y, x, y) > 50 )
	{
		enemyState = "Normal";
	}
}
else if(enemyState == "Dead")
{	
	sprite_index = spr_enemy_dead_blunt;	
	speed = 0;
	
}

