/// @description Insert description here
// You can write your code in this editor

var dir = point_direction(x,y, other.x,other.y);
xspeed = 0;
yspeed = 0;
yspeed += sin(degtorad(dir));
xspeed -= cos(degtorad(dir));