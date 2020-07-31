if(pState == "Normal" || pState == "Attack")
{
	if(pState == "Normal")
	{
		image_speed = 0;
	}
	if (keyboard_check(ord("A")))
	{
		xspeed = -moveSpeed;
		image_speed = imgSpeed;
	}
	if (keyboard_check(ord("D")))
	{
		xspeed = moveSpeed;
		image_speed = imgSpeed;
	}
	if (keyboard_check(ord("W")))
	{
		yspeed = -moveSpeed;
		image_speed = imgSpeed;
	}
	if (keyboard_check(ord("S")))
	{
		yspeed = moveSpeed;
		image_speed = imgSpeed;
	}
}

