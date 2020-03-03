/// @description Insert description here
// You can write your code in this editor

var message = "";
switch(phase) {
	case 0:
		message = "Red Player Move";
		break;
	case 1:
		message = "Red Player Pop";
		break;
	case 2:
		message = "Blue Player Move";
		break;
	case 3:
		message = "Blue Player Pop";
		break;
}

// If it's not centered, then the text won't appear in the exact center of the screen
draw_set_halign(fa_center);
draw_set_color(c_white);
draw_text(room_width / 2, 20, message);