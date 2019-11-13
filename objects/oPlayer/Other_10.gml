/// @description The player is walking
/// @description can interact and talk

if(keyboard_check(ord("D")) || keyboard_check(vk_right)){
	right = 1;
}else{
	right = 0;
}

if(keyboard_check(ord("A")) || keyboard_check(vk_left)){
	left = 1;
}else{
	left = 0;
}

if(keyboard_check(ord("S")) || keyboard_check(vk_down)){
	down = 1;
}else{
	down = 0;
}

if(keyboard_check(ord("W")) || keyboard_check(vk_up)){
	up = 1;
}else{
	up = 0;
}

xDir = right - left;
yDir = down - up;

if(xDir != 0){
	yDir = 0;	
}

var inst = collision_circle(x, y, 20, oNPC, false, false,);
if(instance_exists(inst)){
	if(keyboard_check_pressed(ord("E"))){
		talking = true;	
		display = inst.text;
		global.currentPState = playerStates.talking;
	}
}else{
	talking = false;	
	display = "";
}

x += xDir * moveSpeed;
y += yDir * moveSpeed;