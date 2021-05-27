/// @desc 
if ((string_pos("higsberg", global.searchedTerm) != 0 && !(string_pos("university", global.searchedTerm) != 0 || string_pos("post", global.searchedTerm) != 0)) || string_pos("killings", global.searchedTerm) != 0 || string_pos("murders", global.searchedTerm) != 0){
	global.searchResult = "Throughout last week there has been a number of killings in the small town Higsberg..\n\n\n\nPolice has found a number of dead bodies only one of the bodies was identified so far,\n\nDiana Longman, a student at Higsberg University.\n\nThe police are doing their best to find the killer until then citizens of Higsberg \n\nshould remain in their houses"; 
	global.interisting = true;
	global.page = 1;
	room_goto(rm_searchResult);
} else if (string_pos("method", global.searchedTerm) != 0 || string_pos("save", global.searchedTerm != 0) || string_pos("gas", global.searchedTerm) != 0 || string_pos("engine", global.searchedTerm) != 0){
	global.searchResult = "A number of university students in Higsberg say that they have found a method to make \n\nengines much more efficient.\n\nOfficials from gas companies claim that said method does not work.\n\nWe will have to wait and see";
	global.interisting = false;
	global.page = 1;
	room_goto(rm_searchResult);
} else if (string_pos("diana", global.searchedTerm) != 0 && string_pos("longman", global.searchedTerm) != 0){
	global.searchResult = "Diana Longman, A student at Higsberg University\n\n\nLatest post:\n\n I am so proud of our work. This can totally save the environment\n\n\nClose friends:\n\nDamion Matthews";
	global.interisting = true;
	global.page = 2;
	room_goto(rm_searchResult);
} else if (string_pos("damion", global.searchedTerm) != 0 && ((string_pos("matthews", global.searchedTerm) != 0) || string_pos("matthew", global.searchedTerm) != 0)){
	global.searchResult = "Damion Matthews, A student at Higsberg University\n\n\nLatest post:\n\nFirst Letter of the greatest thing in the world?\n\nReply by a stranger: P for Pizzaa!!\n\n\nClose friends:\n\nDiana Longman";
	global.interisting = true;
	global.page = 2;
	room_goto(rm_searchResult);
} else if (string_pos("richard", global.searchedTerm) != 0 && string_pos("watson", global.searchedTerm) != 0){
	global.searchResult = "Richard Watson.\n\n\n*His page has been set to private except for one post*\n\n\nIT IS IN EVERY LINE OF THE CONTRACT AFTER THE TITLE\n\nTHE FIRST WORD OF THE FIRST LINE\n\nAND THE SECOND WORD OF THE SECOND LINE..\n\nHOW COULD THEY KICK ME OFF??";
	global.interisting = true;
	global.page = 2;
	room_goto(rm_searchResult);
} else if (string_pos("optimus", global.searchedTerm) != 0) /*|| (string_pos("gas", global.searchedTerm != 0) && string_pos("company", global.searchedTerm != 0))*/{
	global.searchResult = "Optimus, a major gas selling company, very infamous for its malpractices\n\n\nOptimus Co-owner Richard Watson, kicked off the company";
	global.interisting = true;
	global.page = 1;
	room_goto(rm_searchResult);
} else if ((string_pos("6", global.searchedTerm) != 0 && string_pos("birch", global.searchedTerm) != 0) || (string_pos("street", global.searchedTerm) != 0 && string_pos("birch", global.searchedTerm) != 0) || ((string_pos("storage", global.searchedTerm) != 0 && string_pos("unit", global.searchedTerm) != 0))){
	global.searchResult = "Robbing at Birch Street, a storage unit was broken into.\n\nThe police were able to take fingerprints off the broken door.\n\nThe prints belonged to a man named Peter Wells\n\nHowever when the police went to his apartment \n\nthey found him dead in his bed. \n\nThe reason for his death has not been determined yet.";
	global.interisting = true;
	global.page = 5;
	room_goto(rm_searchResult);
} else if ((string_pos("wells", global.searchedTerm) != 0 && string_pos("peter", global.searchedTerm) != 0) || (string_pos("inject", global.searchedTerm) != 0 && string_pos("venom", global.searchedTerm) != 0)){
	global.searchResult = "The death of Peter Wells.\n\n\nAfter Peter was thought to be a robber he was found dead in his apartment.\n\nFurther investigation revealed that he died after being injected with some sort of venom\n\nA few days later when Peter's house was being cleared, \n\na piece of paper was found with the word \"killer\" next to these numbers:\n\n27 15 3 22 17 15  5 20 22 3 23 27";
	global.interisting = true;
	global.page = 1;
	room_goto(rm_searchResult);
} else if (string_pos("thawne", global.searchedTerm) != 0 && string_pos("edward", global.searchedTerm) != 0) { 
	global.searchResult = "*Nothing came up*\n\n\n\n\n\nThis is very suspicious..\n\nI need to get this to the Police.";
	global.interisting = true;
	global.page = 4;
	global.killerFound = true;
	room_goto(rm_searchResult);
} else if (string_pos("page", global.searchedTerm) != 0 && string_pos("book", global.searchedTerm) != 0) { 
	global.searchResult = "Page Book is a very popular social media site, where people can find and communicate \n\nwith friends and family.\n\nOr maybe even meet new people with similar interests.\n\n\n\nPage Book founder Mark \"The Zucc\" Berg, Is a LIZARD. Area 69 Raiders say.";
	global.interisting = false;
	global.page = 1;
	room_goto(rm_searchResult);
} else if ((string_pos("the", global.searchedTerm) != 0 && string_pos("zucc", global.searchedTerm) != 0) || (string_pos("69", global.searchedTerm) != 0 && string_pos("area", global.searchedTerm) != 0) || (string_pos("mark", global.searchedTerm) != 0 && string_pos("berg", global.searchedTerm) != 0)) { 
	global.searchResult = "Evidence found during the raid on area 69 points to Mark Berg \"The Zucc\"\n\nas being an alien lizard. the brave heroes who raided area 69 say that\n\nthey found his parents in there.\n\n\n\n\n*I mean this is interesting but not exactly relevant*";
	global.interisting = false;
	global.page = 5;
	room_goto(rm_searchResult);
} else if (string_pos("police", global.searchedTerm) != 0) { 
	global.searchResult = "Police are investigating murders in Higsberg but have not been able to find any good leads\n\n\n-Police Police police Police is a real sentence! learn how!";
	global.interisting = false;
	global.page = 1;
	room_goto(rm_searchResult);
} else if (string_pos("higsberg", global.searchedTerm) != 0 && string_pos("university", global.searchedTerm) != 0) { 
	global.searchResult = "Two students in higsberg university were found dead, \n\nthe students Diana Longman and Damion Matthews\n\nwere known around campus as being some of the best students in the university\n\nas well as for their work on more efficient combustion engines";
	global.interisting = true;
	global.page = 5;
	room_goto(rm_searchResult);
} else if ((string_pos("message", global.searchedTerm) != 0 && (string_pos("hidden", global.searchedTerm) != 0) || string_pos("hide", global.searchedTerm) != 0 || string_pos("hiding", global.searchedTerm) != 0) || string_pos("decode", global.searchedTerm) != 0 || string_pos("decoding", global.searchedTerm) != 0 || string_pos("decrypt", global.searchedTerm) != 0 ) { 
	global.searchResult = "There are many ways to hide a message in plane text\n\none of the most common ways is to hide the message in the first letter of each word";
	global.interisting = true;
	global.page = 1;
	room_goto(rm_searchResult);
} else if (string_pos("contract", global.searchedTerm) != 0) { 
	global.searchResult = "Contracts are usually used to show that an agreement was reached between 2 or more \n\nparties Sometimes one of the parties will try to break these agreements by denying they agreed.\n\nThus most agreements have the names of the people who agreed to it at the end of the last line";
	global.interisting = false;
	global.page = 1;
	room_goto(rm_searchResult);
} else if (string_pos("higsberg", global.searchedTerm) != 0 && string_pos("post", global.searchedTerm) != 0) { 
	global.searchResult = "We are Higsberg Post the most trusted news source in the area of Higsberg\n\nSo forget all those Pagebook moms";
	global.interisting = false;
	global.page = 5;
	room_goto(rm_searchResult);
} else if (string_pos("pineapple", global.searchedTerm) != 0) { 
	global.searchResult = "Why the heck am I looking up pineapple? Dude focus";
	global.interisting = false;
	global.page = 1;
	room_goto(rm_searchResult);
} else {
	global.searchResult = "*You did not find anything important*";
	global.interisting = false;
	global.page = 1;
	room_goto(rm_searchResult);
}