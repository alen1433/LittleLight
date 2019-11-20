//secLine = false;
//trdLine = false;

//if(secLine){
//	dSubText1 = string_copy(dText, 1, 47);
//	dSubText2 = string_copy(dText, 48, dCurLen);
//	if(trdLine){
//		dSubText1 = string_copy(dText, 1, 47);
//		dSubText2 = string_copy(dText, 48, 47);
//		dSubText3 = string_copy(dText, 95, dCurLen);
//	}
//}
//if(secLine){
//	draw_text_transformed(DiagBoxX1 + (10/DiagTxtX),DiagBoxY1 + (10/DiagTxtY)*12,dSubText2,DiagTxtX,DiagTxtY,0);
//}
//if(trdLine){
//	draw_text_transformed(DiagBoxX1 + (10/DiagTxtX),DiagBoxY1 + (10/DiagTxtY)*19,dSubText3,DiagTxtX,DiagTxtY,0);
//}

//secLine = false;
//trdLine = false;

///// @description Text display enhancing
//if(dCurLen < 47){
//	dCurLen += 1;
//}
//if(!secLine && dCurLen >= 47 && dTextLen > 47){
//	dCurLen = 1;
//	secLine = true;
//}else if(!trdLine && secLine && dCurLen >= 47 && dTextLen > 94){
//	dCurLen = 1;
//	trdLine = true;
//}