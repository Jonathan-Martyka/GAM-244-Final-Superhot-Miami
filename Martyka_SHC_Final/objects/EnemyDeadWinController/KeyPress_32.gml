/// @description Insert description here
// You can write your code in this editor
if(roomComplete)
{
	HUDTracker.startScore = global.totalScore;
	global.REMCount++;
	HUDTracker.initialREM = global.REMCount;
	room_goto_next();
}