/// @description Insert description here
// You can write your code in this editor

if(enemyState != "Dead")
{
	global.totalScore += round(random_range(300, 500));
	instance_destroy(other);
}

enemyState = "Dead";