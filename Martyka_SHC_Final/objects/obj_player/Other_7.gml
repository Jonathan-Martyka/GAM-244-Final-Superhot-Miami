/// @description Insert description here
// You can write your code in this editor
if(pState == "Attack")
{
	if(curWeapon == "Unarmed")
	{
		sprite_index = spr_player_walk;
	}
	else if(curWeapon == "Pistol")
	{
		sprite_index = spr_player_pistol_walk;	
	}
	
	pState = "Normal";
}