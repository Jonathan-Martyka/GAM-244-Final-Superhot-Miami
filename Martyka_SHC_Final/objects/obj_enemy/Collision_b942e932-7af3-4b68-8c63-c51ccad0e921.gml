/// @description Insert description here
// You can write your code in this editor

if(enemyState != "Dead")
{
	global.totalScore += round(random_range(200, 400));
	instance_destroy(other);	
}

enemyState = "Dead";

