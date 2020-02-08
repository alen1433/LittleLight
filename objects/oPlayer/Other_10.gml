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

//Colission with npc
var inst = collision_circle(x, y, 20, oNPC, false, false,);
if(instance_exists(inst)){
	//initiate talking, get the name and instance of the NPC
	if(keyboard_check_pressed(ord("E"))){
		talking = true;	
		dName = inst.name;
		//get the dialogue of the specific instance of the NPC
		dialogueMap = decodedText [? dName];
		dialogueList = dialogueMap [? inst.text];
		dListSize = ds_list_size(dialogueList);
		//if it hasnt been sorted, we sort it
		if(!inst.sortedText){
			for(i = 0; i <= dListSize-1; i++){
				dText = dialogueList [| i];
				dTextLen = string_length(dText);
				//check for triple line length
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
					//check for double line length
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
				dialogueList [| i] = dText;
			}
			inst.sortedText = true;
		}
		dText = dialogueList [| 0];
		dTextCurLine = 0;
		dTextLen = string_length(dText);
		global.currentPState = playerStates.talking;
	}
}else{
	talking = false;	
	dText = "";
}

//move the player
x += xDir * moveSpeed;
y += yDir * moveSpeed;