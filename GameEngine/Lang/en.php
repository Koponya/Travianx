<?php

//////////////////////////////////////////////////////////////////////////////////////////////////////
//                                             TRAVIANX                                             //
//            Only for advanced users, do not edit if you dont know what are you doing!             //
//                                Made by: Dzoki & Dixie (TravianX)                                 //
//                              - TravianX = Travian Clone Project -                                //
//                                 DO NOT REMOVE COPYRIGHT NOTICE!                                  //
//////////////////////////////////////////////////////////////////////////////////////////////////////
                                    //                         //
									//         ENGLISH         //
			                        //      Author: Dzoki      //
			                        //      Author: Koponya    //
									/////////////////////////////

//MAIN MENU
define("TRIBE1","Romans"); 
define("TRIBE2","Teutons");
define("TRIBE3","Gauls"); 
define("TRIBE4","Nature"); 
define("TRIBE5","Natars");
define("TRIBE6","Monsters");
 
//MENU
define("HOME","Homepage"); 
define("PROFILE","Profile");
define("INSTRUCT","Instructions");
define("MULTIHUNTER_PANEL","Multihunter Panel");
define("ADMIN_PANEL","Admin Panel");
define("MASS_MESSAGE","Mass Message");
define("UPDATE_T_10","Update Top 10");
define("SYSTEM_MESSAGE","System message");
define("FORUM","Forum");
define("TRAVIAN_PLUS","Travian <b><span class=\"plus_g\">P</span><span class=\"plus_o\">l</span><span class=\"plus_g\">u</span><span class=\"plus_o\">s</span></span></span></b>");
//define("CONTACT","Contact us!");
define("SUPPORT","Support");
define("LOGOUT","Logout");
define("REG","Register");
define("CHAT","Chat");
define("IMPRINT","Imprint");
define("MORE_LINKS","More Links");
define("TOUR","Game Tour");


//ERRORS
define("USRNM_EMPTY","(Username empty)");
define("USRNM_TAKEN","(Name is already in use.)");
define("USRNM_SHORT","(min. ".USRNM_MIN_LENGTH." figures)");
define("USRNM_CHAR","(Invalid Characters)");
define("PW_EMPTY","(Password empty)");
define("PW_SHORT","(min. ".PW_MIN_LENGTH." figures)");
define("PW_INSECURE","(Password insecure. Please choose a more secure one.)");
define("EMAIL_EMPTY","(Email Empty)");
define("EMAIL_INVALID","(Invalid email address)");
define("EMAIL_TAKEN","(Email is already in use)");
define("TRIBE_EMPTY","<li>Please choose a tribe.</li>");
define("AGREE_ERROR","<li>You have to agree to the game rules and the general terms & conditions in order to register.</li>");
define("LOGIN_USR_EMPTY","Enter name.");
define("LOGIN_PASS_EMPTY","Enter password.");
define("EMAIL_ERROR","Email does not match existing");
define("PASS_MISMATCH","Passwords do not match");
define("ALLI_OWNER","Please appoint an alliance owner before deleting");
define("SIT_ERROR","Sitter already set");
define("USR_NT_FOUND","Name does not exist.");
define("LOGIN_PW_ERROR","The password is wrong.");
define("WEL_TOPIC","Useful tips & information ");
define("ATAG_EMPTY","Tag empty");
define("ANAME_EMPTY","Name empty");
define("ATAG_EXIST","Tag taken");
define("ANAME_EXIST","Name taken");
define("NOT_OPENED_YET","Server not started yet.");

//COPYRIGHT
define("TRAVIAN_COPYRIGHT","TravianX 100% Open Source Travian Clone.");

//stuff
define("GOLD_NAME","Gold");

//BUILD.TPL
define("CUR_PROD","Current production");
define("NEXT_PROD","Production at level ");

//BUILDINGS
define("B1","Woodcutter");
define("B1_DESC","The Woodcutter cuts down trees in order to produce lumber. The further you extend the bid1 the more lumber is produced by him.");
define("B2","Clay Pit");
define("B2_DESC","Clay is produced here. By increasing its level you increase its clay production.");
define("B3","Iron Mine");
define("B3_DESC","Here miners produce the precious resource iron. By increasing the mine`s level you increase its iron production.");
define("B4","Cropland");
define("B4_DESC","Your population`s food is produced here. By increasing the farm`s level you increase its crop production.");

//DORF1
define("LUMBER","Lumber");
define("CLAY","Clay");
define("IRON","Iron");
define("CROP","Crop");
define("LEVEL","Level");
define("CROP_COM",CROP." consumption");
define("PER_HR","per hour");
define("PROD_HEADER","Production");
define("MULTI_V_HEADER","Villages");
define("ANNOUNCEMENT","Announcement");
define("GO2MY_VILLAGE","Go to my village");
define("VILLAGE_CENTER","Village centre");
define("FINISH_GOLD","Finish all construction and research orders in this village immediately for 2 Gold?");
define("WAITING_LOOP","(waiting loop)");
define("HRS","(hrs.)");
define("DONE_AT","done at");
define("CANCEL","cancel");
define("LOYALTY","Loyalty:"); 
define("CALCULATED_IN","Calculated in");
define("SEVER_TIME","Server time:");  

//QUEST
define("Q_MSG_SUBJECT", "Message From The Taskmaster");
define("Q_MSG_MESSAGE", "You are to be informed that a nice reward is waiting for you at the taskmaster.<br /><br />Hint: The message has been generated automatically. An answer is not necessary.");
define("Q_CONTINUE","Continue with the next task.");
define("Q_REWARD","Your reward:");
define("Q_ORDER","Order:");
define("Q_ACHIEVED","All tasks achieved!");
define("Q_SKIPED","Tasks skpiped");
define("Q_TASKS","Tasks");
define("Q0","Welcome to ");
define("Q0_DESC","As I see you have been made chieftain of this little village. I will be your counselor for the first few days and never leave your (right hand) side.");
define("Q0_OPT1","To the first task.");
define("Q0_OPT2","Look around on your own.");
define("Q0_OPT3","Play no tasks.");

define("Q1","Task 1: Woodcutter");
define("Q1_DESC","There are four green forests around your village. Construct a woodcutter on one of them. Lumber is an important resource for our new settlement.");
define("Q1_ORDER","Construct a woodcutter.");
define("Q1_RESP","Yes, that way you gain more lumber.I helped a bit and completed the order instantly.");
define("Q1_REWARD","Woodcutter instantly completed.");

define("Q2","Task 2: Crop");
define("Q2_DESC","Now your subjects are hungry from working all day. Extend a cropland to improve your subjects' supply. Come back here once the building is complete.");
define("Q2_ORDER","Extend one cropland.");
define("Q2_RESP","Very good. Now your subjects have enough to eat again...");

define("Q3","Task 3: Your Village's Name");
define("Q3_DESC1","Creative as you are you can grant your village the ultimate name.");
define("Q3_DESC2","Click on 'profile' in the left hand menu and then select 'change profile'...");
define("Q3_ORDER","Change your village's name to something nice.");
define("Q3_RESP","Wow, a great name for their village. It could have been the name of my village!...");

define("Q4","Task 4: Other Players");
define("Q4_DESC","In ". SERVER_NAME ." you play along with billions of other players. Click 'statistics' in the top menu to look up your rank and enter it here.");
define("Q4_ORDER","Look for your rank in the statistics and enter it here.");
//define("Q4_BUTN","complete task");
define("Q4_RESP","Exactly! That's your rank.");

define("Q5","Task 5: Two Building Orders");
define("Q5_DESC","Build an iron mine and a clay pit. Of iron and clay one can never have enough.");
define("Q5_ORDER","<ul><li>Extend one iron mine.<\/li><li>Extend one clay pit.<\/li><\/ul>");
define("Q5_RESP","As you noticed, building orders take rather long. The world of ". SERVER_NAME ." will continue to spin even if you are offline. Even in a few months there will be many new things for you to discover.");
define("Q5_RESP2","The best thing to do is occasionally checking your village and giving you subjects new tasks to do.");

define("Q6","Task 6: Messages");
define("Q6_DESC1","You can talk to other players using the messaging system. I sent a message to you. Read it and come back here.");
define("Q6_DESC2","P.S. Don't forget: on the left the reports, on the right the messages.");
define("Q6_ORDER","Read your new message.");
define("Q6_RESP1","You received it? Very good.");
define("Q6_RESP2","Here is some Gold. With Gold you can do several things, e.g. extend your <b><font color=\"#71D000\">P<\/font><font color=\"#FF6F0F\">l<\/font><font color=\"#71D000\">u<\/font><font color=\"#FF6F0F\">s<\/font><\/b>-Account or increase your resource production.To do so click <a href=\"plus.php?id=3\"><font color=\"#000000\"><?php echo SERVER_NAME; ?><\/font> <b><font color=\"#71D000\">P<\/font><font color=\"#FF6F0F\">l<\/font><font color=\"#71D000\">u<\/font><font color=\"#FF6F0F\">s<\/font><\/b><\/a> in the left hand menu.");

define("Q7","Task 7: Huge Army!");
define("Q7_DISC1","Now I've got a very special quest for you. I am hungry. Give me 200 crop!");
define("Q7_DISC2","In return I will try to organize a huge army to protect your village.");
define("Q7_ORDER","Send 200 crop to the taskmaster.");
define("Q7_OPT1","Send crop.");

define("Q8","Task 8: Everything to 1.");
define("Q8_DISC","Now we should increase your resource production a bit. Extend all your resource tiles to level 1.");
define("Q8_ORDER","Extend all resource tiles to level 1.");
define("Q8_RESP1","Very good, your resource production just thrives.");
define("Q8_RESP2","Soon we can start with constructing buildings in the village.");

define("Q9","Task 9: Dove of Peace");
define("Q9_DISC","The first days after signing up you are protected against attacks by your fellow players. You can see how long this protection lasts by adding the code <b>[#0]<\/b> to your profile.");
define("Q9_ORDER","Write the code <b>[#0]<\/b> into your profile by adding it to one of the two description fields.");
define("Q9_RESP","Well done! Now everyone can see what a great warrior the world is approached by.");

define("Q10","Task 10: Cranny");
define("Q10_DESC1","It's getting time to erect a cranny. The world of ".SERVER_NAME." is dangerous.");
define("Q10_DESC2","Many players live by stealing other players' resources. Build a cranny to hide some of your resources from enemies.");
define("Q10_ORDER","Construct a Cranny.");
define("Q10_RESP1","Well done, now it's way harder for your mean fellow players to plunder your village.");
define("Q10_RESP2","If under attack, your villagers will hide the resources in the Cranny all on their own.");

define("Q11","Task 11: To Two.");
define("Q11_DESC","In ".SERVER_NAME." there is always something to do! Extend one woodcutter, one clay pit, one iron mine and one cropland to level 2 each.");
define("Q11_ORDER","Extend one of each resource tile to level 2.");
define("Q11_RESP","Very good, your village grows and thrives!");

define("Q12","Task 12: Instructions");
define("Q12_DESC1","In the ingame instructions you can find short information texts about different buildings and types of units.");
define("Q12_DESC2","Click on 'instructions' at the left to find out how much lumber is required for the barracks.");
define("Q12_ORDER","Enter how much lumber barracks cost");
define("Q12_RESP","Exactly! Barracks cost 210 lumber.");

define("Q13","Task 13: Main Building");
define("Q13_DESC","Your master builders need a main building level 3 to erect important buildings such as the marketplace or barracks.");
define("Q13_ORDER","Extend your main building to level 3.");
define("Q13_RESP1","Well done. The main building level 3 has been completed.");
define("Q13_RESP2","With this upgrade your master builders cannot only construct more types of buildings but also do so faster.");

define("Q14","Task 14: Advanced!");
define("Q14_DESC","Look up your rank in the player statistics again and enjoy your progress.");
define("Q14_ORDER","Look for your rank in the statistics and enter it here.");
define("Q14_RESP","Well done! That's your current rank.");

define("Q15","Task 16: Weapons or Dough");
define("Q15_DESC1","Now you have to make a decision: Either trade peacefully or become a dreaded warrior.");
define("Q15_DESC2","For the marketplace you need a granary, for the barracks you need a rally point.");
define("Q15_OPT1","Economy");
define("Q15_OPT2","Military");

define("Q16","Task 16: Military");
define("Q16_DESC1","A brave decision. To be able to send troops you need a rally point.");
define("Q16_DESC2","The rally point must be built on a specific building site. The <a href=\"build.php?id=39\">building site<\/a> is located on the right side of the main building, slightly below it. The building site itself is curved.");
define("Q16_ORDER","Construct a rally point.");
define("Q16_RESP","Your rally point has been erected! A good move towards world domination!");

define("Q17","Task 17: Barracks");
define("Q17_DESC1","Now you have a main building level 3 and a rally point. That means that all prerequisites for building barracks have been fulfilled.");
define("Q17_DESC2","You can use the barracks to train troops for fighting.");
define("Q17_ORDER","Construct barracks.");
define("Q17_RESP","Well done... The best instructors from the whole country have gathered to train your men\u2019s fighting skills to top form.");

define("Q18","Task 18: Train.");
define("Q18_DESC","Now that you have barracks you can start training troops. Train two ");//...
define("Q18_ORDER","Please train 2 ");
define("Q18_RESP1","The foundation for your glorious army has been laid.");
define("Q18_RESP2","Before sending your army off to plunder you should check with the <a href=\"warsim.php\">Combat-Simulator<\/a> to see how many troops you need to successfully fight one rat without losses.");

define("Q19","Task 16: Economy");
define("Q19_DESC","Trade & Economy was your choice. Golden times await you for sure!");
define("Q19_ORDER","Construct a Granary.");
define("Q19_RESP","Well done! With the Granary you can store more wheat.");

define("Q20","Task 17: Warehouse");
define("Q20_DESC","Not only Crop has to be saved. Other resources can go to waste as well if they are not stored correctly. Construct a Warehouse!");
define("Q20_ORDER","Construct Warehouse.");
define("Q20_RESP1","Well done, your Warehouse is complete...");
define("Q20_RESP2","Now you have fulfilled all prerequisites required to construct a Marketplace.");

define("Q21","Task 18: Marketplace.");
define("Q21_DESC","Construct a Marketplace so you can trade with your fellow players.");
define("Q21_ORDER","Please build a Marketplace.");
define("Q21_RESP","The Marketplace has been completed. Now you can make offers of your own and accept foreign offers! When creating your own offers, you should think about offering what other players need most to get more profit.");

define("Q22","Task 19: Everything to 2.");
define("Q22_DESC","Now it's time again to extend the cornerstones of might and wealth! This time level 1 is not enough... it will take a while but in the end it will be worth it. Extend all your resource tiles to level 2!");
define("Q22_ORDER","Extend all resource tiles to level 2.");
define("Q22_RESP","Congratulations! Your village grows and thrives...");



//======================================================//
//================ UNITS - DO NOT EDIT! ================//
//======================================================//
define("U0","Hero");

//ROMAN UNITS
define("U1","Legionnaire");
define("U2","Praetorian");
define("U3","Imperian");
define("U4","Equites Legati");
define("U5","Equites Imperatoris");
define("U6","Equites Caesaris");
define("U7","Battering Ram");
define("U8","Fire Catapult");
define("U9","Senator");
define("U10","Settler");

//TEUTON UNITS
define("U11","Clubswinger");
define("U12","Spearman");
define("U13","Axeman");
define("U14","Scout");
define("U15","Paladin");
define("U16","Teutonic Knight");
define("U17","Ram");
define("U18","Catapult");
define("U19","Chief");
define("U20","Settler");

//GAUL UNITS
define("U21","Phalanx");
define("U22","Swordsman");
define("U23","Pathfinder");
define("U24","Theutates Thunder");
define("U25","Druidrider");
define("U26","Haeduan");
define("U27","Ram");
define("U28","Trebuchet");
define("U29","Chieftain");
define("U30","Settler");

//NATURE UNITS
define("U31","Rat");
define("U32","Spider");
define("U33","Snake");
define("U34","Bat");
define("U35","Wild Boar");
define("U36","Wolf");
define("U37","Bear");
define("U38","Crocodile");
define("U39","Tiger");
define("U40","Elephant");

//NATARS UNITS
define("U41","Pikeman");
define("U42","Thorned Warrior");
define("U43","Guardsman");
define("U44","Birds Of Prey");
define("U45","Axerider");
define("U46","Natarian Knight");
define("U47","War Elephant");
define("U48","Ballista");
define("U49","Natarian Emperor");
define("U50","Natarian Settler");

//MONSTER UNITS
define("U51","Monster Peon");
define("U52","Monster Hunter");
define("U53","Monster Warrior");
define("U54","Ghost");
define("U55","Monster Steed");
define("U56","Monster War Steed");
define("U57","Monster Ram");
define("U58","Monster Catapult");
define("U59","Monster Chief");
define("U60","Monster Settler");

//INDEX.php
define("LOGIN","Login");
define("PLAYERS","Players");
define("ONLINE","Online");
define("TUTORIAL","Tutorial");
define("PLAYER_STATISTICS","Player statistics");
define("TOTAL_PLAYERS","".PLAYERS." in total");
define("ACTIVE_PLAYERS","Active players");
define("ONLINE_PLAYERS","".PLAYERS." online");
define("MP_STRATEGY_GAME","".SERVER_NAME." - the multiplayer strategy game");
define("WHAT_IS","".SERVER_NAME." is one of the most popular browser games in the world. As a player in ".SERVER_NAME.", you will build your own empire, recruit a mighty army, and fight with your allies for game world hegemony.");
define("REGISTER_FOR_FREE","Register here for free!");
define("LATEST_GAME_WORLD","Latest game world");
define("LATEST_GAME_WORLD2","Register on the latest<br/>game world and enjoy<br/>the advantages of<br/>being one of the<br/>first players.");
define("PLAY_NOW","Play ".SERVER_NAME." now");
define("LEARN_MORE","Learn more <br/>about ".SERVER_NAME."!");
define("LEARN_MORE2","Now with a revolutionised<br>server system, completely new<br>graphics <br>This clone is The Shiz!");
define("COMUNITY","Community");
define("BECOME_COMUNITY","Become part of our community now!");
define("BECOME_COMUNITY2","Become a part of one of<br>the biggest gaming<br>communities in the<br>world.");
define("NEWS","News");
define("SCREENSHOTS","Screenshots");
define("LEARN1","Upgrade your fields and mines to increase your resource production. You will need resources to construct buildings and train soldiers.");
define("LEARN2","Construct and expand the buildings in your village. Buildings improve your overall infrastructure, increase your resource production and allow you to research, train and upgrade your troops.");
define("LEARN3","View and interact with your surroundings. You can make new friends or new enemies, make use of the nearby oases and observe as your empire grows and becomes stronger.");
define("LEARN4","Follow your improvement and success and compare yourself to other players. Look at the Top 10 rankings and fight to win a weekly medal.");
define("LEARN5","Receive detailed reports about your adventures, trades and battles. Don't forget to check the brand new reports about the happenings taking place in your surroundings.");
define("LEARN6","Exchange information and conduct diplomacy with other players. Always remember that communication is the key to winning new friends and solving old conflicts.");
define("LOGIN_TO","Log in to ". SERVER_NAME);
define("REGIN_TO","Register in ". SERVER_NAME);
define("P_ONLINE","Players online: ");
define("P_TOTAL","Players in total: ");
define("CHOOSE","Please choose a server.");
define("STARTED"," The server started ". round((time()-COMMENCE)/86400) ." days ago.");

//ANMELDEN.php
define("NICKNAME","Nickname");
define("EMAIL","Email");
define("PASSWORD","Password");
define("ROMANS","Romans");
define("TEUTONS","Teutons");
define("GAULS","Gauls");
define("NW","North West");
define("NE","North East");
define("SW","South West");
define("SE","South East");
define("RANDOM","random");
define("ACCEPT_RULES"," I accept the game rules and general terms and conditions.");
define("ONE_PER_SERVER","Each player may only own ONE account per server.");
define("BEFORE_REGISTER","Before you register an account you should read the <a href='../anleitung.php' target='_blank'>instructions</a> of TravianX to see the specific advantages and disadvantages of the three tribes.");
define("BUILDING_UPGRADING","Building:");
define("HOURS","hours");


//ATTACKS ETC.
define("TROOP_MOVEMENTS","Troop Movements:");
define("ARRIVING_REINF_TROOPS","Arriving reinforcing troops");
define("ARRIVING_REINF_TROOPS_SHORT","Reinf.");
define("OWN_ATTACKING_TROOPS","Own attacking troops");
define("ATTACK","Attack");
define("OWN_REINFORCING_TROOPS","Own reinforcing troops");
define("TROOPS_DORF","Troops:");


//LOGIN.php
define("COOKIES","You must have cookies enabled to be able to log in. If you share this computer with other people you should log out after each session for your own safety.");
define("NAME","Name");
define("PW_FORGOTTEN","Password forgotten?");
define("PW_REQUEST","Then you can request a new one which will be sent to your email address.");
define("PW_GENERATE","Generate new password.");
define("EMAIL_NOT_VERIFIED","Email not verified!");
define("EMAIL_FOLLOW","Follow this link to activate your account.");
define("VERIFY_EMAIL","Verify Email.");


//404.php
define("NOTHING_HERE","Nothing here!");
define("WE_LOOKED","We looked 404 times already but can't find anything");

//TIME RELATED
define("CALCULATED","Calculated in");
define("SERVER_TIME","Server time:");

//MASSMESSAGE.php
define("MASS","Message Content");
define("MASS_SUBJECT","Subject:");
define("MASS_COLOR","Message color:");
define("MASS_REQUIRED","All fields required");
define("MASS_UNITS","Images (units):");
define("MASS_SHOWHIDE","Show/Hide");
define("MASS_READ","Read this: after adding smilie, you have to add left or right after number otherwise image will won't work");
define("MASS_CONFIRM","Confirmation");
define("MASS_REALLY","Do you really want to send MassIGM?");
define("MASS_ABORT","Aborting right now");
define("MASS_SENT","Mass IGM was sent");


/*
|--------------------------------------------------------------------------
|   Index 
|--------------------------------------------------------------------------
*/

       $lang['index'][0][1] = "Welcome to " . SERVER_NAME . "";
       $lang['index'][0][2] = "Manual";
       $lang['index'][0][3] = "Play now, for free!";
       $lang['index'][0][4] = "What is " . SERVER_NAME . "";
       $lang['index'][0][5] = "" . SERVER_NAME . " is a <b>browser game</b> featuring an engaging ancient world with thousands of other real players.</p><p>It`s <strong>free to play</strong> and requires <strong>no downloads</strong>.";
       $lang['index'][0][6] = "Click here to play " . SERVER_NAME . "";
       $lang['index'][0][7] = "Total players";
       $lang['index'][0][8] = "Players active";
       $lang['index'][0][9] = "Players online";
       $lang['index'][0][10] = "About the game";
       $lang['index'][0][11] = "You will begin as the chief of a tiny village and will embark on an exciting quest.";
       $lang['index'][0][12] = "Build up villages, wage wars or establish trade routes with your neighbours.";
       $lang['index'][0][13] = "Play with and against thousands of other real players and conquer the the world of Travian.";
       $lang['index'][0][14] = "News";
       $lang['index'][0][15] = "FAQ";
       $lang['index'][0][16] = "Screenshots";
       $lang['forum'] = "Forum";
       $lang['register'] = "Register";
       $lang['login'] = "Login";


?>
