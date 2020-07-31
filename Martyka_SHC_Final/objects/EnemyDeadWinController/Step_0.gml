/// @description Insert description here
// You can write your code in this editor

var allDead = true;

var numOfEnemies = instance_number(obj_enemy);

for(var i = 0; i < numOfEnemies; i++)
{
	var enemy = instance_find(obj_enemy, i);
	if(enemy.enemyState != "Dead")
	{
		allDead = false;
		break;
	}
}

if(allDead == true)
{
	roomComplete = true;
}