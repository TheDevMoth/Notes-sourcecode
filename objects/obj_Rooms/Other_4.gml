/// @desc 
switch(room){
	case rm_Cutscene_2:
		with(obj_DiaBox){
			ds_list_add(endStrings, "Welcome To Higsberg.", "This place never changes.", "And there is nothing anybody can do about it.", "Not even the police.");
			event_user(0);
		}
	break;
	case rm_Cutscene_3:
		timeline_index = timeline0;
		timeline_running = true;
		global.dialogueComplete = false;
	break;
}