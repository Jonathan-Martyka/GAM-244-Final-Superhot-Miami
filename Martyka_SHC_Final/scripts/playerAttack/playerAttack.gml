
if (mouse_check_button_pressed(mb_left) && pState == "Normal")
{
	pState = "Attack";	
	image_index = 0;
	image_speed = imgSpeed;
	
	if(curWeapon == "Unarmed")
	{
		sprite_index = spr_player_punch;
	}
	else if(curWeapon == "Pistol")
	{
		if(pistolAmmo > 0)
		{
			sprite_index = spr_player_pistol_walk;
			pistolAmmo -= 1;
			var temp = instance_create_layer(x, y, "Projectiles", obj_bullet_player);
			temp.direction = point_direction(x, y, mouse_x, mouse_y);
		}
	}
	else if(curWeapon == "BouncePistol")
	{
		if(bounceAmmo > 0)
		{
			sprite_index = spr_player_pistol_walk;
			bounceAmmo -= 1;
			var temp = instance_create_layer(x, y, "Projectiles", obj_bullet_player_bounce);
			temp.direction = point_direction(x, y, mouse_x, mouse_y);
		}
	
	}
}
if (mouse_check_button_pressed(mb_right) && pState == "Normal")
{
	if(curWeapon == "Pistol" || curWeapon == "BouncePistol")
	{
		curWeapon = "Unarmed";
		sprite_index = spr_player_walk;
		var temp = instance_create_layer(x, y, "Projectiles", obj_PistolThrow);
		temp.direction = point_direction(x,y,mouse_x, mouse_y);
		
	}
}