/// @description Insert description here
// You can write your code in this editor
event_inherited();

if(enemyState == "Normal")
{
	image_speed = 0;
	
	var lineCheck = collision_line(x, y, playerObj.x, playerObj.y, obj_WallBase, false, true);
	
	if(lineCheck == noone)
	{
		fireTimer -= 1 * global.TimeSpeed;
	
		if(fireTimer <= 0)
		{
			enemyState = "Attack";	
			for (i = 0; i < slugCount; i++) {
				var temp = instance_create_layer(x, y, "Projectiles", obj_bullet_enemy_shotgun);
				temp.direction = point_direction(x, y, playerObj.x, playerObj.y) + random_range(-spreadAngle/2, spreadAngle/2);
			}
			fireTimer = 30;
		}
	
		direction = point_direction(x, y, playerObj.x, playerObj.y);
		image_angle = direction;
	}
	
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
	
}

