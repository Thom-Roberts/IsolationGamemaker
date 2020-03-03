// iso_can_pop(tl);
var tl = argument0;

var lvl = obj_level;


// Choosing the tile the player is currently on
if(lvl.player_red.tx == tl.tx && lvl.player_red.ty == tl.ty) 
	return false;
// Choosing the tile the player is currently on
if(lvl.player_blue.tx == tl.tx && lvl.player_blue.ty == tl.ty) 
	return false;

// Needs to be a yellow frame
if(tl.image_index != 0)
	return false;


return true;