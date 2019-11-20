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
		dName = inst.name;
		dTextInst = array_get(dialogue,inst.text);
		dTextMaxLine = array_length_1d(dTextInst);
		dTextCurLine = 0;
		if(!inst.sortedText){
			for(i = 0; i < dTextMaxLine; i++){
				dText = dTextInst[i];
				dTextLen = string_length(dText);
				if(dTextLen > 2 * maxWLen){
					var curPos = maxWLen*2;
					while(true){
						if(string_char_at(dText, curPos) != " "){
							curPos--;
						}else{
							dText = string_insert("\n",dText,curPos+1);
							break;
						}
					}
					var curPos = maxWLen;
					while(true){
						if(string_char_at(dText, curPos) != " "){
							curPos--;
						}else{
							dText = string_insert("\n",dText,curPos+1);
							break;
						}
					}
					dTextLen += 2;
				}else if(dTextLen > maxWLen){
					var curPos = maxWLen;
					while(true){
						if(string_char_at(dText, curPos) != " "){
							curPos--;
						}else{
							dText = string_insert("\n",dText,curPos+1);
							break;
						}
					}
					dTextLen ++;
				}
				dTextInst[i] = dText;
			}
			dialogue[inst.text] = dTextInst;
			inst.sortedText = true;
		}
		dText = dTextInst[dTextCurLine];
		dTextLen = string_length(dText);
		global.currentPState = playerStates.talking;
	}
}else{
	talking = false;	
	dText = "";
}

x += xDir * moveSpeed;
y += yDir * moveSpeed;