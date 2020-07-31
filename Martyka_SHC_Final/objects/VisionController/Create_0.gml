/// @description Insert description here
// You can write your code in this editor

playerObj = instance_find(obj_player, 0);
visionMask = noone; 

//Base for dynamic lighting, seeing entities
nTris = 1024;
global.visionAngle = 60.0;
arrTx = array_create(2, 0);
arrTy = array_create(2, 0);
nearestWall = noone;
global.tWallX = noone;
global.tWallY = noone;

//Used for when adjusting global.visionAngle for REM ability
//global.REMCount initialized in HUDController for persistence
previousVisionAngle = global.visionAngle;
newAngle = previousVisionAngle;
activeREM = false;
rubberBanding = false;