//Looked at collisionLineFirst script on gamemaker community for help on binary search syntax. Was/Is very similar to my code.

var startx, starty, targetx, targety, obj, prec, notme, sectionx, sectiony, currInst, nextInst;

startx = argument0;
starty = argument1;
targetx = argument2;
targety = argument3;
obj = argument4;
prec = argument5;
notme = argument6;
sectionx = targetx - startx;
sectiony = targety - starty;
currInst = collision_line(startx, starty, targetx, targety, obj, prec, notme);

safetyx = targetx;
safetyy = targety;

if (currInst != noone) {
	
	//While there are more half distances to check
	while (abs(sectionx) >= 1 || abs(sectiony) >= 1) {
		//decrease section half to add/subtract for next check
		sectionx /= 2;
		sectiony /= 2;
		nextInst = collision_line(startx, starty, targetx, targety, obj, prec, notme);
		
		if (nextInst != noone) {
			//instance found; check smaller section to see if closer instance exists
			targetx -= sectionx;
			targety -= sectiony;
			currInst = nextInst;
		} else {
			//instance not found; check smaller section of last area closest instance found
			targetx += sectionx;
			targety += sectiony			
		}
	}	
}

if (currInst != noone) {
	global.tWallX = targetx;
	global.tWallY = targety;
} else {
	global.tWallX = safetyx;
	global.tWallY = safetyy;
}


