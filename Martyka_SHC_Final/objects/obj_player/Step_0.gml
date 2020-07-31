
direction = point_direction(x, y, mouse_x, mouse_y)
image_angle = direction;

x += xspeed;
y += yspeed;

xspeed = 0;
yspeed = 0;


playerMove();

playerAttack();


