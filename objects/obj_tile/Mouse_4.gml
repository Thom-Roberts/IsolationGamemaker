/// @description Insert description here
// You can write your code in this editor

// Pop tile if possible
var lvl = obj_level;
var validAction = false;
// move phase
if(lvl.phase == 0 || lvl.phase == 2) {
	var p;
	if(lvl.phase == 0) {
		p = lvl.player_red;	
	}
	else {
		p = lvl.player_blue;	
	}
	
	// Can move 1 space left, up, down, or right
	var dx = abs(p.tx - tx);
	var dy = abs(p.ty - ty);
	if(dx + dy == 1 && iso_can_move(self)) {
		p.tx = tx;
		p.ty = ty;
		p.x = x;
		p.y = y;
		validAction = true;
	}
}


// pop phase
if(lvl.phase == 1 || lvl.phase == 3) {
	// Passing this instance to the script
	if(iso_can_pop(self)) {
		// change the animation frame this is on	
		image_index = 1; 
		validAction = true;
	}
}



if(validAction) {
	lvl.phase = lvl.phase + 1;
	if(lvl.phase > 3) {
		lvl.phase = 0;
	}	
}


// obj_level.phase = (obj_level.phase + 1) % 4;