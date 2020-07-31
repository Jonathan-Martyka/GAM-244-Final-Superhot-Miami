/// @description Insert description here
// You can write your code in this editor

//Tutorial followed from here for basic Layer Masking code/format: http://www.davetech.co.uk/gamemakermasking
/* Note: Author also mentions making a dynamic vision system using layer masking. I have NOT looked at it,
*  so I have no idea if he made his similar to mine or not.
*/

if (!surface_exists(visionMask)) {
	visionMask = surface_create(room_width, room_height);
}

surface_set_target(visionMask);

draw_sprite(spr_darkOverlay, 0, 0, 0);

gpu_set_blendmode(bm_subtract);
draw_set_color(c_black);

angleOffset = global.visionAngle/nTris;
targetPointX = playerObj.x + lengthdir_x(view_wport[0], playerObj.direction - global.visionAngle/2);
targetPointY = playerObj.y + lengthdir_y(view_wport[0], playerObj.direction - global.visionAngle/2);
setCollisionLineFirstLocation(playerObj.x, playerObj.y, targetPointX, targetPointY, obj_WallBase, false, true);

arrTx[1] = global.tWallX;
arrTy[1] = global.tWallY;


for (i = 1; i <= nTris; ++i) {
	//shifts last line coordinates to index 0 and index 1 will be overridden with new line coordinates
	arrTx[0] = arrTx[1];
	arrTy[0] = arrTy[1];
	
	targetPointX = playerObj.x + lengthdir_x(view_wport[0], playerObj.direction - global.visionAngle/2 + (angleOffset * i));
	targetPointY = playerObj.y + lengthdir_y(view_wport[0], playerObj.direction - global.visionAngle/2 + (angleOffset * i));
	setCollisionLineFirstLocation(playerObj.x, playerObj.y, targetPointX, targetPointY, obj_WallBase, false, true);
	
	arrTx[1] = global.tWallX;
	arrTy[1] = global.tWallY;
	
	draw_triangle(playerObj.x, playerObj.y, arrTx[0], arrTy[0], arrTx[1], arrTy[1], false);
}

draw_circle(playerObj.x, playerObj.y, 25, false);



gpu_set_blendmode(bm_normal);

surface_reset_target();

draw_surface(visionMask, x, y);


/* Research Links:
* Surfaces: https://docs.yoyogames.com/source/dadiospice/002_reference/surfaces/index.html
* draw_clear_alpha: https://docs.yoyogames.com/source/dadiospice/002_reference/drawing/colour%20and%20blending/draw_clear_alpha.html
* The Draw Event: https://docs.yoyogames.com/source/dadiospice/000_using%20gamemaker/events/draw%20event.html
* gpu_set_blendmode
* drawing triangle cones: https://forum.yoyogames.com/index.php?threads/solved-vision-cone.961/
* visible: https://docs.yoyogames.com/source/dadiospice/002_reference/objects%20and%20instances/instances/instance%20properties/visible.html
* vs object_set_visible: https://docs.yoyogames.com/source/dadiospice/002_reference/objects%20and%20instances/objects/object_set_visible.html
*/