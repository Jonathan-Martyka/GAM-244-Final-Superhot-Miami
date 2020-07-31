/// @description Insert description here
// You can write your code in this editor
if(pState == "Attack")
{
	if(other.enemyState != "Dead")
	{
		other.direction = point_direction(x, y, other.x, other.y);
		other.image_angle = other.direction;
		other.enemyState = "Dead";
		global.totalScore += round(random_range(400, 600));
	}
}