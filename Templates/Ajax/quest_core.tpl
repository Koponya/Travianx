<?php

/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
|              .: PLEASE DONT'T REMOVE OR CHANGE THIS NOTICE :.               	|
| ---------------------------------------------------------------------------   |
|  Filename       quest_core.tpl	                                       	    |
|  Version        0.1                                                           |
|  Developed by:  DesPlus <desplus@gmail.com>   								|
|  change Translatable by Koponya <gaga1004@gmail.com>      											|
 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/

include("GameEngine/Village.php");

$uArray = $database->getUserArray($_SESSION['username'],0);

if($message->unread && !$message->nunread) { $messagelol = "i2"; }
else if(!$message->unread && $message->nunread) { $messagelol = "i3"; }
else if($message->unread && $message->nunread) { $messagelol = "i1"; }
else { $messagelol = "i4"; }

if (isset($qact)){
 switch($qact) {
	case 'enter':
	$database->updateUserField($_SESSION['username'],'quest','1',0);
	$_SESSION['qst']= 1;
	break;
	
	case 'skip':
	$database->updateUserField($_SESSION['username'],'quest','23',0);
	$_SESSION['qst']= 23;
	
	//Give Reward
	$gold=$database->getUserField($_SESSION['username'],'gold','username');
	$gold+=25;
	$database->updateUserField($_SESSION['username'],'gold',$gold,0);
	$skiped=true;
	break;

	case '2':
	$database->updateUserField($_SESSION['username'],'quest','2',0);		
	$_SESSION['qst']= 2;	
	break;

	case '3':
	$database->updateUserField($_SESSION['username'],'quest','3',0);
	$_SESSION['qst']= 3;
	
	//Give Reward
	$database->modifyResource($session->villages[0],50,60,30,10,1);	
	break;

	case '4':
	$database->updateUserField($_SESSION['username'],'quest','4',0);
	$_SESSION['qst']= 4;
	
	//Give Reward
	$database->modifyResource($session->villages[0],30,60,30,20,1);		
	break;
	
	case 'rank':
	$rSubmited=$qact2;
	break;
	
	case '5':
	$database->updateUserField($_SESSION['username'],'quest','5',0);
	$_SESSION['qst']= 5;
		
	//Give Reward
	$database->modifyResource($session->villages[0],40,30,20,30,1);	
	break;

	case '6':
	$database->updateUserField($_SESSION['username'],'quest','6',0);
	$_SESSION['qst']= 6;
	$Subject=Q_MSG_SUBJECT;
	$Message=Q_MSG_MESSAGE;
	$database->sendMessage($session->userinfo['id'],0,$Subject,$Message,0);
	$RB=true;
		
	//Give Reward
	$database->modifyResource($session->villages[0],50,60,30,30,1);	
	break;
	
	case '7':
	$database->updateUserField($_SESSION['username'],'quest','7',0);
	$_SESSION['qst']= 7;
		
	//Give Reward
	$gold=$database->getUserField($_SESSION['username'],'gold','username');
	$gold+=20;
	$database->updateUserField($_SESSION['username'],'gold',$gold,0);
	break;
	
	case '8':
	$crop = round($village->acrop);
	if ($crop>=200){
	$database->updateUserField($_SESSION['username'],'quest','8',0);
	$_SESSION['qst']= 8;	
	
	//Get 200 Crop	
	$database->modifyResource($session->villages[0],0,0,0,-200,1);		
	//Give Reward
	$database->modifyUnit($session->villages[0],31,1,1);
	} else{
	$NoCrop="No Enough Crop!";
	}
	break;
	
	case '9':
	$database->updateUserField($_SESSION['username'],'quest','9',0);
	$_SESSION['qst']= 9;
	
	//Give Reward
	$database->modifyResource($session->villages[0],75,80,30,50,1);	
	break;
	
	case '10':
	$database->updateUserField($_SESSION['username'],'quest','10',0);
	$_SESSION['qst']= 10;
		
	//Give Reward
	$database->modifyResource($session->villages[0],120,200,140,100,1);	
	break;
	
	case '11':
	$database->updateUserField($_SESSION['username'],'quest','11',0);
	$_SESSION['qst']= 11;
			
	//Give Reward
	$database->modifyResource($session->villages[0],150,180,30,130,1);
	break;
	
	case '12':
	$database->updateUserField($_SESSION['username'],'quest','12',0);
	$_SESSION['qst']= 12;
			
	//Give Reward
	$database->modifyResource($session->villages[0],60,50,40,30,1);
	break;
	
	case 'lumber':
	$lSubmited=$qact2;
	break;
	
	case '13':
	$database->updateUserField($_SESSION['username'],'quest','13',0);
	$_SESSION['qst']= 13;
			
	//Give Reward
	$database->modifyResource($session->villages[0],50,30,60,20,1);
	break;
	
	case '14':
	$database->updateUserField($_SESSION['username'],'quest','14',0);
	$_SESSION['qst']= 14;
			
	//Give Reward
	$database->modifyResource($session->villages[0],75,75,40,40,1);
	break;
	
	case '15':
	$database->updateUserField($_SESSION['username'],'quest','15',0);
	$_SESSION['qst']= 15;
			
	//Give Reward
	$database->modifyResource($session->villages[0],100,90,100,60,1);
	break;
	
	case '16':
	$database->updateUserField($_SESSION['username'],'quest','16',0);
	$_SESSION['qst']= 16;			
	break;
	
	case '17':
	$database->updateUserField($_SESSION['username'],'quest','17',0);
	$_SESSION['qst']= 17;
	
	//Give Reward
	$database->modifyResource($session->villages[0],80,90,60,40,1);
	break;
	
	case '18':
	$database->updateUserField($_SESSION['username'],'quest','18',0);
	$_SESSION['qst']= 18;
	
	//Give Reward
	$database->modifyResource($session->villages[0],70,100,90,100,1);
	break;

	case '19':
	$database->updateUserField($_SESSION['username'],'quest','19',0);
	$_SESSION['qst']= 19;			
	break;
	
	case '20':
	$database->updateUserField($_SESSION['username'],'quest','20',0);
	$_SESSION['qst']= 20;
	
	//Give Reward
	$database->modifyResource($session->villages[0],80,90,60,40,1);
	break;
	
	case '21':
	$database->updateUserField($_SESSION['username'],'quest','21',0);
	$_SESSION['qst']= 21;
	break;
	
	case '22':
	$database->updateUserField($_SESSION['username'],'quest','22',0);
	$_SESSION['qst']= 22;
	
	//Give Reward
	$database->modifyResource($session->villages[0],300,320,360,570,1);
	break;
	
	case '23':
	$database->updateUserField($_SESSION['username'],'quest','23',0);
	$_SESSION['qst']= 23;
	
	//Give Reward
	$gold=$database->getUserField($_SESSION['username'],'gold','username');
	$gold+=15;
	$database->updateUserField($_SESSION['username'],'gold',$gold,0);
	break;
}

}

header("Content-Type: application/json;");

      if($_SESSION['qst']== 0){
	  ?>

{"markup":"\n\t\t<div id=\"qstd\"><h1> <img class=\"point\" src=\"img\/x.gif\" alt=\"\" title=\"\"\/> <?php echo Q0.SERVER_NAME; ?>!<\/h1><br \/><i>&bdquo;<? echo Q0_DESC; ?>&rdquo;<\/i><br \/><br \/><span id=\"qst_accpt\"><a class=\"qle\" href=\"javascript: qst_next('','enter'); \"><? echo Q0_OPT1; ?><\/a><a class=\"qri\" href=\"javascript: qst_fhandle();\"><? echo Q0_OPT2; ?><\/a><input type=\"hidden\" id=\"qst_val\" value=\"2\" \/><br \/><br \/><br \/><a class=\"qri\" href=\"javascript: qst_next('','skip');\"><? echo Q0_OPT3; ?><\/a><\/span><\/div>\n\t\t<div id=\"qstbg\" class=\"intro\"><\/div>\n\t\t","number":null,"reward":false,"qgsrc":"q_l<?php echo $session->userinfo['tribe'];?>g","msrc":"<?php echo $messagelol; ?>","altstep":1}

<?php } elseif($_SESSION['qst']== 1){

//Check one of Woodcutters is level 1 or upper 
$tRes = $database->getResourceLevel($session->villages[0]);
$woodL=$tRes['f1']+$tRes['f3']+$tRes['f14']+$tRes['f17'];
if ($woodL<1){?>
{"markup":"\n\t\t<div id=\"qstd\"><h1> <img class=\"point\" src=\"img\/x.gif\" alt=\"\" title=\"\"\/> <? echo Q1; ?><\/h1><br \/><i>&bdquo;<? echo Q1_DESC; ?>&rdquo;<\/i><br \/><br \/><div class=\"rew\"><p class=\"ta_aw\"><? echo Q_ORDER; ?></p><? echo Q1_ORDER; ?><\/div><br \/><span id=\"qst_accpt\"><\/span><\/div>\n\t\t<div id=\"qstbg\" class=\"wood\"><\/div>\n\t\t","number":"-1","reward":false,"qgsrc":"q_l<?php echo $session->userinfo['tribe'];?>","msrc":"<?php echo $messagelol; ?>","altstep":0}
<?php }else{ ?>
{"markup":"\n\t\t<div id=\"qstd\"><h1> <img class=\"point\" src=\"img\/x.gif\" alt=\"\" title=\"\"\/> <? echo Q1; ?><\/h1><br \/><i>&bdquo;<? echo Q1_RESP; ?>&rdquo;<\/i><br \/><br \/><input type=\"hidden\" id=\"qst_val\" value=\"2\" \/><div class=\"rew\"><p class=\"ta_aw\"><? echo Q_REWARD; ?></p><? echo Q1_REWARD; ?><br \/><\/div><br \/><span id=\"qst_accpt\"><a href=\"javascript: qst_next('','2');\"><? echo Q_CONTINUE; ?><\/a><\/span><\/div>\n\t\t<div id=\"qstbg\" class=\"wood\"><\/div>\n\t\t","number":"-1","reward":false,"qgsrc":"q_l<?php echo $session->userinfo['tribe'];?>","msrc":"<?php echo $messagelol; ?>","altstep":0}
<?php }?>

<?php } elseif($_SESSION['qst']== 2){ 

//Check one of Croplands is level 1 or upper 
$tRes = $database->getResourceLevel($session->villages[0]);
$cropL=$tRes['f2']+$tRes['f8']+$tRes['f9']+$tRes['f12']+$tRes['f13']+$tRes['f15'];
if ($cropL<1){?>
{"markup":"\n\t\t<div id=\"qstd\"><h1> <img class=\"point\" src=\"img\/x.gif\" alt=\"\" title=\"\"\/> <? echo Q2; ?><\/h1><br \/><i>&bdquo;<? echo Q2_DESC; ?>&rdquo;<\/i><br \/><br \/><div class=\"rew\"><p class=\"ta_aw\"><? echo Q_ORDER; ?></p><? echo Q2_ORDER; ?><\/div><br \/><span id=\"qst_accpt\"><\/span><\/div>\n\t\t<div id=\"qstbg\" class=\"farm\"><\/div>\n\t\t","number":"-2","reward":false,"qgsrc":"q_l<?php echo $session->userinfo['tribe'];?>","msrc":"<?php echo $messagelol; ?>","altstep":0}
<?php }else{ ?>
{"markup":"\n\t\t<div id=\"qstd\"><h1> <img class=\"point\" src=\"img\/x.gif\" alt=\"\" title=\"\"\/> <? echo Q2; ?><\/h1><br \/><i>&bdquo;<? echo Q2_RESP; ?>&rdquo;<\/i><br \/><br \/><div class=\"rew\"><p class=\"ta_aw\"><input type=\"hidden\" id=\"qst_val\" value=\"2\" \/><? echo Q_REWARD; ?></p><img src=\"img\/x.gif\" class=\"r1\" alt=\"<? echo LUMBER; ?>\" title=\"<? echo LUMBER; ?>\" \/>50&nbsp;&nbsp;<img src=\"img\/x.gif\" class=\"r2\" alt=\"<? echo CLAY; ?>\" title=\"<? echo CLAY; ?>\" \/>60&nbsp;&nbsp;<img src=\"img\/x.gif\" class=\"r3\" alt=\"<? echo IRON; ?>\" title=\"<? echo IRON; ?>\" \/>30&nbsp;&nbsp;<img src=\"img\/x.gif\" class=\"r4\" alt=\"<? echo CROP; ?>\" title=\"Crop\" \/>10&nbsp;&nbsp;<\/div><br \/><span id=\"qst_accpt\"><a href=\"javascript: qst_next('','3');\"><? echo Q_CONTINUE; ?><\/a><\/span><\/div>\n\t\t<div id=\"qstbg\" class=\"farm\"><\/div>\n\t\t","number":2,"reward":{"plus":1},"qgsrc":"q_l<?php echo $session->userinfo['tribe'];?>g","msrc":"<?php echo $messagelol; ?>","altstep":0}
<?php }?>

<?php } elseif($_SESSION['qst']== 3){ 

//Check the village name is changed or is default name

$vName=$village->vname;
if ($vName==$session->userinfo['username']."'s village"){?>
{"markup":"\n\t\t<div id=\"qstd\"><h1> <img class=\"point\" src=\"img\/x.gif\" alt=\"\" title=\"\"\/> <? echo Q3; ?><\/h1><br \/><i>&bdquo;<? echo Q3_DESC1; ?>\r\n<br \/><br \/>\r\n<? echo Q3_DESC2; ?>&rdquo;<\/i><br \/><br \/><div class=\"rew\"><p class=\"ta_aw\"><? echo Q_ORDER; ?></p><? echo Q3_ORDER; ?><\/div><br \/><span id=\"qst_accpt\"><\/span><\/div>\n\t\t<div id=\"qstbg\" class=\"village_name\"><\/div>\n\t\t","number":"-3","reward":false,"qgsrc":"q_l<?php echo $session->userinfo['tribe'];?>","msrc":"<?php echo $messagelol; ?>","altstep":0}
<?php }else{ ?>
{"markup":"\n\t\t<div id=\"qstd\"><h1> <img class=\"point\" src=\"img\/x.gif\" alt=\"\" title=\"\"\/> <? echo Q3; ?><\/h1><br \/><i>&bdquo;<? echo Q3_RESP; ?>&rdquo;<\/i><br \/><br \/><div class=\"rew\"><p class=\"ta_aw\"><input type=\"hidden\" id=\"qst_val\" value=\"2\" \/><? echo Q_REWARD; ?></p><img src=\"img\/x.gif\" class=\"r1\" alt=\"<? echo LUMBER; ?>\" title=\"<? echo LUMBER; ?>\" \/>30&nbsp;&nbsp;<img src=\"img\/x.gif\" class=\"r2\" alt=\"<? echo CLAY; ?>\" title=\"<? echo CLAY; ?>\" \/>60&nbsp;&nbsp;<img src=\"img\/x.gif\" class=\"r3\" alt=\"<? echo IRON; ?>\" title=\"<? echo IRON; ?>\" \/>30&nbsp;&nbsp;<img src=\"img\/x.gif\" class=\"r4\" alt=\"<? echo CROP; ?>\" title=\"Crop\" \/>20&nbsp;&nbsp;<\/div><br \/><span id=\"qst_accpt\"><a href=\"javascript: qst_next('','4');\"><? echo Q_CONTINUE; ?><\/a><\/span><\/div>\n\t\t<div id=\"qstbg\" class=\"village_name\"><\/div>\n\t\t","number":3,"reward":{"wood":30,"clay":60,"iron":30,"crop":20},"qgsrc":"q_l<?php echo $session->userinfo['tribe'];?>g","msrc":"<?php echo $messagelol; ?>","altstep":0}
<?php }?>

<?php } elseif($_SESSION['qst']== 4){

// Compare real player rank with submited rank
$temp['uid']=$session->userinfo['id'];
$ranking->procRankReq($temp);
$displayarray = $database->getUserArray($temp['uid'],1);
$rRes=$ranking->searchRank($displayarray['username'],"username");
if ($rRes!=$rSubmited){?>
{"markup":"\n\t\t<div id=\"qstd\"><h1> <img class=\"point\" src=\"img\/x.gif\" alt=\"\" title=\"\"\/> <? echo Q4; ?><\/h1><br \/><i>&bdquo;<? echo Q4_DESC; ?>&rdquo;<\/i><br \/><br \/><div class=\"rew\"><p class=\"ta_aw\"><? echo Q_ORDER; ?></p><? echo Q4_ORDER; ?><\/div><br \/><input id=\"qst_val\" class=\"text\" type=\"text\" name=\"qstin\" \/> <input onclick=\"qst_next('','rank',document.getElementById('qst_val').value)\" type=\"button\" value=\"complete task\"\/><br \/><span id=\"qst_accpt\"><\/span><\/div>\n\t\t<div id=\"qstbg\" class=\"rank\"><\/div>\n\t\t","number":-4,"reward":false,"qgsrc":"q_l<?php echo $session->userinfo['tribe'];?>","msrc":"<?php echo $messagelol; ?>","altstep":0}
<?php }else{ ?>
{"markup":"\n\t\t<div id=\"qstd\"><h1> <img class=\"point\" src=\"img\/x.gif\" alt=\"\" title=\"\"\/> <? echo Q4; ?><\/h1><br \/><i>&bdquo;<? echo Q4_RESP; ?>&rdquo;<\/i><br \/><br \/><div class=\"rew\"><p class=\"ta_aw\"><input type=\"hidden\" id=\"qst_val\" value=\"2\" \/><? echo Q_REWARD; ?></p><img src=\"img\/x.gif\" class=\"r1\" alt=\"<? echo LUMBER; ?>\" title=\"<? echo LUMBER; ?>\" \/>40&nbsp;&nbsp;<img src=\"img\/x.gif\" class=\"r2\" alt=\"<? echo CLAY; ?>\" title=\"<? echo CLAY; ?>\" \/>30&nbsp;&nbsp;<img src=\"img\/x.gif\" class=\"r3\" alt=\"<? echo IRON; ?>\" title=\"<? echo IRON; ?>\" \/>20&nbsp;&nbsp;<img src=\"img\/x.gif\" class=\"r4\" alt=\"<? echo CROP; ?>\" title=\"Crop\" \/>30&nbsp;&nbsp;<\/div><br \/><span id=\"qst_accpt\"><a href=\"javascript: qst_next('','5');\"><? echo Q_CONTINUE; ?><\/a><\/span><\/div>\n\t\t","number":4,"reward":{"wood":40,"clay":30,"iron":20,"crop":30},"qgsrc":"q_l<?php echo $session->userinfo['tribe'];?>","msrc":"<?php echo $messagelol; ?>","altstep":0}
<?php }?>

<?php } elseif($_SESSION['qst']== 5){ 

//Check one of Iron Mines and one of Clay Pites are level 1 or upper 
$tRes = $database->getResourceLevel($session->villages[0]);
$ironL=$tRes['f4']+$tRes['f7']+$tRes['f10']+$tRes['f11'];
$clayL=$tRes['f5']+$tRes['f6']+$tRes['f16']+$tRes['f18'];
if ($ironL<1 || $clayL<1){?>
{"markup":"\n\t\t<div id=\"qstd\"><h1> <img class=\"point\" src=\"img\/x.gif\" alt=\"\" title=\"\"\/> <? echo Q5; ?><\/h1><br \/><i>&bdquo;<? echo Q5_DISC; ?>&rdquo;<\/i><br \/><br \/><div class=\"rew\"><p class=\"ta_aw\"><? echo Q_ORDER; ?></p><? echo Q5_ORDER; ?><\/div><br \/><span id=\"qst_accpt\"><\/span><\/div>\n\t\t<div id=\"qstbg\" class=\"clay_iron\"><\/div>\n\t\t","number":-5,"reward":false,"qgsrc":"q_l<?php echo $session->userinfo['tribe'];?>","msrc":"<?php echo $messagelol; ?>","altstep":0}
<?php }else{ ?>
{"markup":"\n\t\t<div id=\"qstd\"><h1> <img class=\"point\" src=\"img\/x.gif\" alt=\"\" title=\"\"\/> <? echo Q5; ?><\/h1><br \/><i>&bdquo;<? echo Q5_RESP; ?>\r\n<br \/><br \/>\r\n<? echo Q5_RESP2; ?>&rdquo;<\/i><br \/><br \/><div class=\"rew\"><p class=\"ta_aw\"><input type=\"hidden\" id=\"qst_val\" value=\"2\" \/><? echo Q_REWARD; ?></p><img src=\"img\/x.gif\" class=\"r1\" alt=\"<? echo LUMBER; ?>\" title=\"<? echo LUMBER; ?>\" \/>50&nbsp;&nbsp;<img src=\"img\/x.gif\" class=\"r2\" alt=\"<? echo CLAY; ?>\" title=\"<? echo CLAY; ?>\" \/>60&nbsp;&nbsp;<img src=\"img\/x.gif\" class=\"r3\" alt=\"<? echo IRON; ?>\" title=\"<? echo IRON; ?>\" \/>30&nbsp;&nbsp;<img src=\"img\/x.gif\" class=\"r4\" alt=\"<? echo CROP; ?>\" title=\"Crop\" \/>30&nbsp;&nbsp;<\/div><br \/><span id=\"qst_accpt\"><a href=\"javascript: qst_next('','6');\"><? echo Q_CONTINUE; ?><\/a><\/span><\/div>\n\t\t<div id=\"qstbg\" class=\"clay_iron\"><\/div>\n\t\t","number":5,"reward":{"wood":50,"clay":60,"iron":30,"crop":30},"qgsrc":"q_l<?php echo $session->userinfo['tribe'];?>g","msrc":"<?php echo $messagelol; ?>","altstep":0}
<?php }?>

<?php } elseif($_SESSION['qst']== 6){ 

//Check message is viewed or no
if ($message->unread || $RB==true){?>
{"markup":"\n\t\t<div id=\"qstd\"><h1> <img class=\"point\" src=\"img\/x.gif\" alt=\"\" title=\"\"\/> <? echo Q6; ?><\/h1><br \/><i>&bdquo;<? echo Q6_DESC1; ?>\r\n<br \/><br \/>\r\n<? echo Q6_DESC2; ?>&rdquo;<\/i><br \/><br \/><div class=\"rew\"><p class=\"ta_aw\"><? echo Q_ORDER; ?></p><? echo Q6_ORDER; ?><\/div><br \/><span id=\"qst_accpt\"><\/span><\/div>\n\t\t<div id=\"qstbg\" class=\"msg\"><\/div>\n\t\t","number":"-6","reward":false,"qgsrc":"q_l<?php echo $session->userinfo['tribe'];?>","msrc":"i2","altstep":0}
<?php }else{ ?>
{"markup":"\n\t\t<div id=\"qstd\"><h1> <img class=\"point\" src=\"img\/x.gif\" alt=\"\" title=\"\"\/> <? echo Q6; ?><\/h1><br \/><i>&bdquo;<? echo Q6_RESP1; ?>\r\n<br \/><br \/>\r\n<? echo Q6_RESP2; ?>&rdquo;<\/i><br \/><br \/><div class=\"rew\"><p class=\"ta_aw\"><input type=\"hidden\" id=\"qst_val\" value=\"2\" \/><? echo Q_REWARD; ?></p>20 <? echo GOLD_NAME; ?><br \/><\/div><br \/><span id=\"qst_accpt\"><a href=\"javascript: qst_next('','7');\"><? echo Q_CONTINUE; ?><\/a><\/span><\/div>\n\t\t<div id=\"qstbg\" class=\"msg\"><\/div>\n\t\t","number":6,"reward":{"gold":20},"qgsrc":"q_l<?php echo $session->userinfo['tribe'];?>g","msrc":"<?php echo $messagelol; ?>","altstep":0}
<?php }?>

<?php } elseif($_SESSION['qst']== 7){ ?>
{"markup":"\n\t\t<div id=\"qstd\"><h1> <img class=\"point\" src=\"img\/x.gif\" alt=\"\" title=\"\"\/> <? echo Q7; ?><\/h1><br \/><i>&bdquo;<? echo Q7_DISC1; ?>\r\n<br \/><br \/>\r\n<? echo Q7_DISC2; ?>&rdquo;<\/i><br \/><br \/><div class=\"rew\"><p class=\"ta_aw\"><? echo Q_ORDER; ?></p><? echo Q7_ORDER; ?><\/div><br \/><img class=\"r4\" src=\"img\/x.gif\" title=\"Crop\" alt=\"<? echo CROP; ?>\" \/>200 <input type=\"hidden\" id=\"qst_val\" value=\"set\" \/><input onclick=\"javascript: qst_next('','8');\" name=\"qstin\" type=\"button\" value=\"<? echo Q7_OPT1; ?>\" \/><br \/><font color='#FF0000'><?php if(isset($NoCrop)){echo $NoCrop;}?><font\/><br \/><span id=\"qst_accpt\"><\/span><\/div>\n\t\t<div id=\"qstbg\" class=\"army\"><\/div>\n\t\t","number":-8,"reward":false,"qgsrc":"q_l<?php echo $session->userinfo['tribe'];?>","msrc":"<?php echo $messagelol; ?>","altstep":0}

<?php } elseif($_SESSION['qst']== 8){

//Check additional of each resource upgraded to lvl1 or upper
$tRes = $database->getResourceLevel($session->villages[0]);
$ironL=0;$clayL=0;$woodL=0;$cropL=0;
if($tRes['f4']>0){$ironL++;};if($tRes['f7']>0){$ironL++;};if($tRes['f10']>0){$ironL++;};if($tRes['f11']>0){$ironL++;}
if($tRes['f5']>0){$clayL++;};if($tRes['f6']>0){$clayL++;};if($tRes['f16']>0){$clayL++;};if($tRes['f18']>0){$clayL++;}
if($tRes['f1']>0){$woodL++;};if($tRes['f3']>0){$woodL++;};if($tRes['f14']>0){$woodL++;};if($tRes['f17']>0){$woodL++;}
if($tRes['f2']>0){$cropL++;};if($tRes['f8']>0){$cropL++;};if($tRes['f9']>0){$cropL++;};if($tRes['f12']>0){$cropL++;};if($tRes['f13']>0){$cropL++;};if($tRes['f15']>0){$cropL++;}
if ($ironL<4 || $clayL<4 || $woodL<4 || $cropL<6){?>
{"markup":"\n\t\t<div id=\"qstd\"><h1> <img class=\"point\" src=\"img\/x.gif\" alt=\"\" title=\"\"\/><?php echo $questc->q;?> <? echo Q8; ?><\/h1><br \/><i>&bdquo;<? echo Q8_DISC; ?>&rdquo;<\/i><br \/><br \/><div class=\"rew\"><p class=\"ta_aw\"><? echo Q_ORDER; ?></p><? echo Q8_ORDER; ?><\/div><br \/><span id=\"qst_accpt\"><\/span><\/div>\n\t\t<div id=\"qstbg\" class=\"allres\"><\/div>\n\t\t","number":-12,"reward":false,"qgsrc":"q_l<?php echo $session->userinfo['tribe'];?>","msrc":"<?php echo $messagelol; ?>","altstep":0}
<?php }else{ ?>
{"markup":"\n\t\t<div id=\"qstd\"><h1> <img class=\"point\" src=\"img\/x.gif\" alt=\"\" title=\"\"\/> <? echo Q8; ?><\/h1><br \/><i>&bdquo;<? echo Q8_RESP1; ?>\r\n<br \/><br \/>\r\n<? echo Q8_RESP2; ?>&rdquo;<\/i><br \/><br \/><div class=\"rew\"><p class=\"ta_aw\"><input type=\"hidden\" id=\"qst_val\" value=\"2\" \/><? echo Q_REWARD; ?></p><img src=\"img\/x.gif\" class=\"r1\" alt=\"<? echo LUMBER; ?>\" title=\"<? echo LUMBER; ?>\" \/>75&nbsp;&nbsp;<img src=\"img\/x.gif\" class=\"r2\" alt=\"<? echo CLAY; ?>\" title=\"<? echo CLAY; ?>\" \/>80&nbsp;&nbsp;<img src=\"img\/x.gif\" class=\"r3\" alt=\"<? echo IRON; ?>\" title=\"<? echo IRON; ?>\" \/>30&nbsp;&nbsp;<img src=\"img\/x.gif\" class=\"r4\" alt=\"<? echo CROP; ?>\" title=\"Crop\" \/>50&nbsp;&nbsp;<\/div><br \/><span id=\"qst_accpt\"><a href=\"javascript: qst_next('','9');\"><? echo Q_CONTINUE; ?><\/a><\/span><\/div>\n\t\t<div id=\"qstbg\" class=\"allres\"><\/div>\n\t\t","number":12,"reward":{"wood":75,"clay":80,"iron":30,"crop":50},"qgsrc":"q_l<?php echo $session->userinfo['tribe'];?>g","msrc":"<?php echo $messagelol; ?>","altstep":0}
<?php }?>

<?php } elseif($_SESSION['qst']== 9){ 

//Check player Descriptions for [#0]
$Dave= strrpos ($uArray['desc1'],'[#0]');
$Dave2=strrpos ($uArray['desc2'],'[#0]');
if (!is_numeric($Dave) and !is_numeric($Dave2)){?>
{"markup":"\n\t\t<div id=\"qstd\"><h1> <img class=\"point\" src=\"img\/x.gif\" alt=\"\" title=\"\"\/> <? echo Q9; ?><\/h1><br \/><i>&bdquo;<? echo Q9_DISC; ?>&rdquo;<\/i><br \/><br \/><div class=\"rew\"><p class=\"ta_aw\"><? echo Q_ORDER; ?></p><? echo Q9_ORDER; ?><\/div><br \/><span id=\"qst_accpt\"><\/span><\/div>\n\t\t<div id=\"qstbg\" class=\"medal\"><\/div>\n\t\t","number":"-13","reward":false,"qgsrc":"q_l<?php echo $session->userinfo['tribe'];?>","msrc":"<?php echo $messagelol; ?>","altstep":0}
<?php }else{ ?>
{"markup":"\n\t\t<div id=\"qstd\"><h1> <img class=\"point\" src=\"img\/x.gif\" alt=\"\" title=\"\"\/> <? echo Q9; ?><\/h1><br \/><i>&bdquo;<? echo Q9_RESP; ?>&rdquo;<\/i><br \/><br \/><div class=\"rew\"><p class=\"ta_aw\"><input type=\"hidden\" id=\"qst_val\" value=\"2\" \/><? echo Q_REWARD; ?></p><img src=\"img\/x.gif\" class=\"r1\" alt=\"<? echo LUMBER; ?>\" title=\"<? echo LUMBER; ?>\" \/>120&nbsp;&nbsp;<img src=\"img\/x.gif\" class=\"r2\" alt=\"<? echo CLAY; ?>\" title=\"<? echo CLAY; ?>\" \/>200&nbsp;&nbsp;<img src=\"img\/x.gif\" class=\"r3\" alt=\"<? echo IRON; ?>\" title=\"<? echo IRON; ?>\" \/>140&nbsp;&nbsp;<img src=\"img\/x.gif\" class=\"r4\" alt=\"<? echo CROP; ?>\" title=\"Crop\" \/>100&nbsp;&nbsp;<\/div><br \/><span id=\"qst_accpt\"><a href=\"javascript: qst_next('','10');\"><? echo Q_CONTINUE; ?><\/a><\/span><\/div>\n\t\t<div id=\"qstbg\" class=\"medal\"><\/div>\n\t\t","number":13,"reward":{"wood":120,"clay":200,"iron":140,"crop":100},"qgsrc":"q_l<?php echo $session->userinfo['tribe'];?>g","msrc":"<?php echo $messagelol; ?>","altstep":0}
<?php }?>

<?php } elseif($_SESSION['qst']== 10){

//Check cranny builded or no
$cranny = $building->getTypeLevel(23);
if ($cranny == 0){?>
{"markup":"\n\t\t<div id=\"qstd\"><h1> <img class=\"point\" src=\"img\/x.gif\" alt=\"\" title=\"\"\/> <? echo Q10; ?><\/h1><br \/><i>&bdquo;<? echo Q10_DESC1; ?>\r\n<br \/><br \/>\r\n<? echo Q10_DESC2; ?>&rdquo;<\/i><br \/><br \/><div class=\"rew\"><p class=\"ta_aw\"><? echo Q_ORDER; ?></p><? echo Q10_ORDER; ?><\/div><br \/><span id=\"qst_accpt\"><\/span><\/div>\n\t\t<div id=\"qstbg\" class=\"hide\"><\/div>\n\t\t","number":-14,"reward":false,"qgsrc":"q_l<?php echo $session->userinfo['tribe'];?>","msrc":"<?php echo $messagelol; ?>","altstep":0}
<?php }else{ ?>
{"markup":"\n\t\t<div id=\"qstd\"><h1> <img class=\"point\" src=\"img\/x.gif\" alt=\"\" title=\"\"\/> <? echo Q10; ?><\/h1><br \/><i>&bdquo;<? echo Q10_RESP1; ?>\r\n<br \/><br \/>\r\n<? echo Q10_RESP2; ?>&rdquo;<\/i><br \/><br \/><div class=\"rew\"><p class=\"ta_aw\"><input type=\"hidden\" id=\"qst_val\" value=\"2\" \/><? echo Q_REWARD; ?></p><img src=\"img\/x.gif\" class=\"r1\" alt=\"<? echo LUMBER; ?>\" title=\"<? echo LUMBER; ?>\" \/>150&nbsp;&nbsp;<img src=\"img\/x.gif\" class=\"r2\" alt=\"<? echo CLAY; ?>\" title=\"<? echo CLAY; ?>\" \/>180&nbsp;&nbsp;<img src=\"img\/x.gif\" class=\"r3\" alt=\"<? echo IRON; ?>\" title=\"<? echo IRON; ?>\" \/>30&nbsp;&nbsp;<img src=\"img\/x.gif\" class=\"r4\" alt=\"<? echo CROP; ?>\" title=\"Crop\" \/>130&nbsp;&nbsp;<\/div><br \/><span id=\"qst_accpt\"><a href=\"javascript: qst_next('','11');\"><? echo Q_CONTINUE; ?><\/a><\/span><\/div>\n\t\t<div id=\"qstbg\" class=\"hide\"><\/div>\n\t\t","number":14,"reward":{"wood":150,"clay":180,"iron":30,"crop":130},"qgsrc":"q_l<?php echo $session->userinfo['tribe'];?>g","msrc":"<?php echo $messagelol; ?>","altstep":0}
<?php }?>

<?php } elseif($_SESSION['qst']== 11){

//Check one of each resource is lvl2 or upper
$tRes = $database->getResourceLevel($session->villages[0]);
$ironL=0;$clayL=0;$woodL=0;$cropL=0;
if($tRes['f4']>1){$ironL++;};if($tRes['f7']>1){$ironL++;};if($tRes['f10']>1){$ironL++;};if($tRes['f11']>1){$ironL++;}
if($tRes['f5']>1){$clayL++;};if($tRes['f6']>1){$clayL++;};if($tRes['f16']>1){$clayL++;};if($tRes['f18']>1){$clayL++;}
if($tRes['f1']>1){$woodL++;};if($tRes['f3']>1){$woodL++;};if($tRes['f14']>1){$woodL++;};if($tRes['f17']>1){$woodL++;}
if($tRes['f2']>1){$cropL++;};if($tRes['f8']>1){$cropL++;};if($tRes['f9']>1){$cropL++;};if($tRes['f12']>1){$cropL++;};if($tRes['f13']>1){$cropL++;};if($tRes['f15']>1){$cropL++;}
if ($ironL<1 || $clayL<1 || $woodL<1 || $cropL<1){?>
{"markup":"\n\t\t<div id=\"qstd\"><h1> <img class=\"point\" src=\"img\/x.gif\" alt=\"\" title=\"\"\/> <? echo Q11; ?><\/h1><br \/><i>&bdquo;<? echo Q11_DESC; ?>&rdquo;<\/i><br \/><br \/><div class=\"rew\"><p class=\"ta_aw\"><? echo Q_ORDER; ?></p><? echo Q11_ORDER; ?><\/div><br \/><span id=\"qst_accpt\"><\/span><\/div>\n\t\t<div id=\"qstbg\" class=\"allres\"><\/div>\n\t\t","number":"-15","reward":false,"qgsrc":"q_l<?php echo $session->userinfo['tribe'];?>","msrc":"<?php echo $messagelol; ?>","altstep":0}
<?php }else{ ?>
{"markup":"\n\t\t<div id=\"qstd\"><h1> <img class=\"point\" src=\"img\/x.gif\" alt=\"\" title=\"\"\/> <? echo Q11; ?><\/h1><br \/><i>&bdquo;<? echo Q11_RESP; ?>&rdquo;<\/i><br \/><br \/><div class=\"rew\"><p class=\"ta_aw\"><input type=\"hidden\" id=\"qst_val\" value=\"2\" \/><? echo Q_REWARD; ?></p><img src=\"img\/x.gif\" class=\"r1\" alt=\"<? echo LUMBER; ?>\" title=\"<? echo LUMBER; ?>\" \/>60&nbsp;&nbsp;<img src=\"img\/x.gif\" class=\"r2\" alt=\"<? echo CLAY; ?>\" title=\"<? echo CLAY; ?>\" \/>50&nbsp;&nbsp;<img src=\"img\/x.gif\" class=\"r3\" alt=\"<? echo IRON; ?>\" title=\"<? echo IRON; ?>\" \/>40&nbsp;&nbsp;<img src=\"img\/x.gif\" class=\"r4\" alt=\"<? echo CROP; ?>\" title=\"Crop\" \/>30&nbsp;&nbsp;<\/div><br \/><span id=\"qst_accpt\"><a href=\"javascript: qst_next('','12');\"><? echo Q_CONTINUE; ?><\/a><\/span><\/div>\n\t\t<div id=\"qstbg\" class=\"allres\"><\/div>\n\t\t","number":15,"reward":{"wood":60,"clay":50,"iron":40,"crop":30},"qgsrc":"q_l<?php echo $session->userinfo['tribe'];?>g","msrc":"<?php echo $messagelol; ?>","altstep":0}
<?php }?>

<?php } elseif($_SESSION['qst']== 12){ 

//Check player submited number Barracks cost lumber
if ($lSubmited!=210){?>
{"markup":"\n\t\t<div id=\"qstd\"><h1> <img class=\"point\" src=\"img\/x.gif\" alt=\"\" title=\"\"\/> <? echo Q12; ?><\/h1><br \/><i>&bdquo;<? echo Q12_DESC1; ?>\r\n<br \/><br \/>\r\n<? echo Q12_DESC2; ?>&rdquo;<\/i><br \/><br \/><div class=\"rew\"><p class=\"ta_aw\"><? echo Q_ORDER; ?></p><? echo Q12_ORDER; ?><\/div><br \/><input id=\"qst_val\" class=\"text\" type=\"text\" name=\"qstin\" \/> <input onclick=\"qst_next('','lumber',document.getElementById('qst_val').value)\" type=\"button\" value=\"complete task\"\/><br \/><span id=\"qst_accpt\"><\/span><\/div>\n\t\t<div id=\"qstbg\" class=\"cost\"><\/div>\n\t\t","number":"-16","reward":false,"qgsrc":"q_l<?php echo $session->userinfo['tribe'];?>","msrc":"<?php echo $messagelol; ?>","altstep":0}
<?php }else{ ?>
{"markup":"\n\t\t<div id=\"qstd\"><h1> <img class=\"point\" src=\"img\/x.gif\" alt=\"\" title=\"\"\/> <? echo Q12; ?><\/h1><br \/><i>&bdquo;<? echo Q12_RESP; ?>&rdquo;<\/i><br \/><br \/><div class=\"rew\"><p class=\"ta_aw\"><input type=\"hidden\" id=\"qst_val\" value=\"2\" \/><? echo Q_REWARD; ?></p><img src=\"img\/x.gif\" class=\"r1\" alt=\"<? echo LUMBER; ?>\" title=\"<? echo LUMBER; ?>\" \/>50&nbsp;&nbsp;<img src=\"img\/x.gif\" class=\"r2\" alt=\"<? echo CLAY; ?>\" title=\"<? echo CLAY; ?>\" \/>30&nbsp;&nbsp;<img src=\"img\/x.gif\" class=\"r3\" alt=\"<? echo IRON; ?>\" title=\"<? echo IRON; ?>\" \/>60&nbsp;&nbsp;<img src=\"img\/x.gif\" class=\"r4\" alt=\"<? echo CROP; ?>\" title=\"Crop\" \/>20&nbsp;&nbsp;<\/div><br \/><span id=\"qst_accpt\"><a href=\"javascript: qst_next('','13');\"><? echo Q_CONTINUE; ?><\/a><\/span><\/div>\n\t\t","number":16,"reward":{"wood":50,"clay":30,"iron":60,"crop":20},"qgsrc":"q_l<?php echo $session->userinfo['tribe'];?>","msrc":"<?php echo $messagelol; ?>","altstep":0}
<?php }?>

<?php } elseif($_SESSION['qst']== 13){

//Check main building lvl is 3 or upper
$mainbuilding = $building->getTypeLevel(15);
if ($mainbuilding<3){?>
{"markup":"\n\t\t<div id=\"qstd\"><h1> <img class=\"point\" src=\"img\/x.gif\" alt=\"\" title=\"\"\/> <? echo Q13; ?><\/h1><br \/><i>&bdquo;<? echo Q13_DESC; ?>&rdquo;<\/i><br \/><br \/><div class=\"rew\"><p class=\"ta_aw\"><? echo Q_ORDER; ?></p><? echo Q13_ORDER; ?><\/div><br \/><span id=\"qst_accpt\"><\/span><\/div>\n\t\t<div id=\"qstbg\" class=\"main\"><\/div>\n\t\t","number":-17,"reward":false,"qgsrc":"q_l<?php echo $session->userinfo['tribe'];?>","msrc":"<?php echo $messagelol; ?>","altstep":0}
<?php }else{ ?>
{"markup":"\n\t\t<div id=\"qstd\"><h1> <img class=\"point\" src=\"img\/x.gif\" alt=\"\" title=\"\"\/> <? echo Q13; ?><\/h1><br \/><i>&bdquo;<? echo Q13_RESP; ?>\r\n<br><br>\r\n<? echo Q13_RESP2; ?>&rdquo;<\/i><br \/><br \/><div class=\"rew\"><p class=\"ta_aw\"><input type=\"hidden\" id=\"qst_val\" value=\"2\" \/><? echo Q_REWARD; ?></p><img src=\"img\/x.gif\" class=\"r1\" alt=\"<? echo LUMBER; ?>\" title=\"<? echo LUMBER; ?>\" \/>75&nbsp;&nbsp;<img src=\"img\/x.gif\" class=\"r2\" alt=\"<? echo CLAY; ?>\" title=\"<? echo CLAY; ?>\" \/>75&nbsp;&nbsp;<img src=\"img\/x.gif\" class=\"r3\" alt=\"<? echo IRON; ?>\" title=\"<? echo IRON; ?>\" \/>40&nbsp;&nbsp;<img src=\"img\/x.gif\" class=\"r4\" alt=\"<? echo CROP; ?>\" title=\"Crop\" \/>40&nbsp;&nbsp;<\/div><br \/><span id=\"qst_accpt\"><a href=\"javascript: qst_next('','14');\"><? echo Q_CONTINUE; ?><\/a><\/span><\/div>\n\t\t<div id=\"qstbg\" class=\"main\"><\/div>\n\t\t","number":17,"reward":{"wood":75,"clay":75,"iron":40,"crop":40},"qgsrc":"q_l<?php echo $session->userinfo['tribe'];?>g","msrc":"<?php echo $messagelol; ?>","altstep":0}
<?php }?>

<?php } elseif($_SESSION['qst']== 14){

// Compare real player rank with submited rank
$temp['uid']=$session->userinfo['id'];
$ranking->procRankReq($temp);
$displayarray = $database->getUserArray($temp['uid'],1);
$rRes=$ranking->searchRank($displayarray['username'],"username");
if ($rRes!=$rSubmited){ ?>
{"markup":"\n\t\t<div id=\"qstd\"><h1> <img class=\"point\" src=\"img\/x.gif\" alt=\"\" title=\"\"\/> <? echo Q14; ?><\/h1><br \/><i>&bdquo;<? echo Q14_DESC; ?>&rdquo;<\/i><br \/><br \/><div class=\"rew\"><p class=\"ta_aw\"><? echo Q_ORDER; ?></p><? echo Q14_ORDER; ?><\/div><br \/><input id=\"qst_val\" class=\"text\" type=\"text\" name=\"qstin\" \/> <input onclick=\"qst_next('','rank',document.getElementById('qst_val').value)\" type=\"button\" value=\"complete task\"\/><br \/><span id=\"qst_accpt\"><\/span><\/div>\n\t\t<div id=\"qstbg\" class=\"rank\"><\/div>\n\t\t","number":"-18","reward":false,"qgsrc":"q_l<?php echo $session->userinfo['tribe'];?>","msrc":"<?php echo $messagelol; ?>","altstep":0}
<?php }else{ ?>
{"markup":"\n\t\t<div id=\"qstd\"><h1> <img class=\"point\" src=\"img\/x.gif\" alt=\"\" title=\"\"\/> <?echo Q14; ?><\/h1><br \/><i>&bdquo;<? echo Q14_RESP; ?>&rdquo;<\/i><br \/><br \/><div class=\"rew\"><p class=\"ta_aw\"><input type=\"hidden\" id=\"qst_val\" value=\"2\" \/><? echo Q_REWARD; ?></p><img src=\"img/x.gif\" class=\"r1\" alt=\"<? echo LUMBER; ?>\" title=\"<? echo LUMBER; ?>\">100&nbsp;&nbsp;<img src=\"img/x.gif\" class=\"r2\" alt=\"<? echo CLAY; ?>\" title=\"<? echo CLAY; ?>\">90&nbsp;&nbsp;<img src=\"img/x.gif\" class=\"r3\" alt=\"<? echo IRON; ?>\" title=\"<? echo IRON; ?>\">100&nbsp;&nbsp;<img src=\"img/x.gif\" class=\"r4\" alt=\"<? echo CROP; ?>\" title=\"Crop\">60&nbsp;&nbsp;<\/div><br \/><span id=\"qst_accpt\"><a href=\"javascript: qst_next('','15');\"><? echo Q_CONTINUE; ?><\/a><\/span><\/div>\n\t\t<div id=\"qstbg\" class=\"allres\"><\/div>\n\t\t","number":18,"reward":{"wood":100,"clay":90,"iron":100,"crop":60},"qgsrc":"q_l<?php echo $session->userinfo['tribe'];?>","msrc":"<?php echo $messagelol; ?>","altstep":0}
<?php }?>

<?php } elseif($_SESSION['qst']== 15){

// Ask from plyer ?>
{"markup":"\n\t\t<div id=\"qstd\"><h1> <img class=\"point\" src=\"img\/x.gif\" alt=\"\" title=\"\"\/> <? echo Q15; ?><\/h1><br \/><i>&bdquo;<? echo Q15_DESC1; ?>\r\n<br \/><br \/>\r\n<? echo Q15_DESC2; ?>&rdquo;<\/i><br \/><br \/><input type=\"hidden\" id=\"qst_val\" value=\"\" \/><input onclick=\"javascript: qst_next('','19');\" type=\"button\" value=\"<? echo Q15_OPT1; ?>\" class=\"qb1\"\/><input onclick=\"javascript: qst_next('','16');\" type=\"button\" value=\"<? echo Q15_OPT2; ?>\" class=\"qb2\" \/><span id=\"qst_accpt\"><\/span><\/div>\n\t\t<div id=\"qstbg\" class=\"granary_rally\"><\/div>\n\t\t","number":"-19","reward":false,"qgsrc":"q_l<?php echo $session->userinfo['tribe'];?>","msrc":"<?php echo $messagelol; ?>","altstep":0}

<?php } elseif($_SESSION['qst']== 16){

// Checking rollypoint builded or no
$rallypoint = $building->getTypeLevel(16);
if ($rallypoint==0){ ?>
{"markup":"\n\t\t<div id=\"qstd\"><h1> <img class=\"point\" src=\"img\/x.gif\" alt=\"\" title=\"\"\/> <? echo Q16; ?><\/h1><br \/><i>&bdquo;<? echo Q16_DESC1; ?>\r\n<br \/><br \/>\r\n<? echo Q16_DESC2; ?>&rdquo;<\/i><br \/><br \/><div class=\"rew\"><p class=\"ta_aw\"><? echo Q_ORDER; ?></p><? echo Q16_ORDER; ?><\/div><br \/><span id=\"qst_accpt\"><\/span><\/div>\n\t\t<div id=\"qstbg\" class=\"granary_rally\"><\/div>\n\t\t","number":"-19","reward":false,"qgsrc":"q_l<?php echo $session->userinfo['tribe'];?>","msrc":"<?php echo $messagelol; ?>","altstep":0}
<?php }else{ ?>
{"markup":"\n\t\t<div id=\"qstd\"><h1> <img class=\"point\" src=\"img\/x.gif\" alt=\"\" title=\"\"\/> <? echo Q16; ?><\/h1><br \/><i>&bdquo;<? echo Q16_RESP; ?>&rdquo;<\/i><br \/><br \/><div class=\"rew\"><p class=\"ta_aw\"><input type=\"hidden\" id=\"qst_val\" value=\"2\" \/><? echo Q_REWARD; ?></p><img src=\"img\/x.gif\" class=\"r1\" alt=\"<? echo LUMBER; ?>\" title=\"<? echo LUMBER; ?>\" \/>80&nbsp;&nbsp;<img src=\"img\/x.gif\" class=\"r2\" alt=\"<? echo CLAY; ?>\" title=\"<? echo CLAY; ?>\" \/>90&nbsp;&nbsp;<img src=\"img\/x.gif\" class=\"r3\" alt=\"<? echo IRON; ?>\" title=\"<? echo IRON; ?>\" \/>60&nbsp;&nbsp;<img src=\"img\/x.gif\" class=\"r4\" alt=\"<? echo CROP; ?>\" title=\"Crop\" \/>40&nbsp;&nbsp;<\/div><br \/><span id=\"qst_accpt\"><a href=\"javascript: qst_next('','17');\"><? echo Q_CONTINUE; ?><\/a><\/span><\/div>\n\t\t<div id=\"qstbg\" class=\"granary_rally\"><\/div>\n\t\t","number":19,"reward":{"wood":80,"clay":90,"iron":60,"crop":40},"qgsrc":"q_l<?php echo $session->userinfo['tribe'];?>g","msrc":"<?php echo $messagelol; ?>","altstep":0}
<?php } ?>

<?php } elseif($_SESSION['qst']==17){

// Checking barrack builded or no
$barrack = $building->getTypeLevel(19);
if ($barrack==0){ ?>
{"markup":"\n\t\t<div id=\"qstd\"><h1> <img class=\"point\" src=\"img\/x.gif\" alt=\"\" title=\"\"\/> <? echo Q17; ?><\/h1><br \/><i>&bdquo;<? echo Q17_DESC1; ?>\r\n<br><br>\r\n<? echo Q17_DESC2; ?>&rdquo;<\/i><br \/><br \/><div class=\"rew\"><p class=\"ta_aw\"><? echo Q_ORDER; ?></p><? echo Q17_ORDER; ?><\/div><br \/><span id=\"qst_accpt\"><\/span><\/div>\n\t\t<div id=\"qstbg\" class=\"barracks\"><\/div>\n\t\t","number":"-20","reward":false,"qgsrc":"q_l<?php echo $session->userinfo['tribe'];?>","msrc":"<?php echo $messagelol; ?>","altstep":0}
<?php }else{ ?>
{"markup":"\n\t\t<div id=\"qstd\"><h1> <img class=\"point\" src=\"img\/x.gif\" alt=\"\" title=\"\"\/> <? echo Q17; ?><\/h1><br \/><i>&bdquo;<? echo Q17_RESP; ?>&rdquo;<\/i><br \/><br \/><div class=\"rew\"><p class=\"ta_aw\"><input type=\"hidden\" id=\"qst_val\" value=\"2\" \/><? echo Q_REWARD; ?></p><img src=\"img\/x.gif\" class=\"r1\" alt=\"<? echo LUMBER; ?>\" title=\"<? echo LUMBER; ?>\" \/>70&nbsp;&nbsp;<img src=\"img\/x.gif\" class=\"r2\" alt=\"<? echo CLAY; ?>\" title=\"<? echo CLAY; ?>\" \/>100&nbsp;&nbsp;<img src=\"img\/x.gif\" class=\"r3\" alt=\"<? echo IRON; ?>\" title=\"<? echo IRON; ?>\" \/>90&nbsp;&nbsp;<img src=\"img\/x.gif\" class=\"r4\" alt=\"<? echo CROP; ?>\" title=\"Crop\" \/>100&nbsp;&nbsp;<\/div><br \/><span id=\"qst_accpt\"><a href=\"javascript: qst_next('','18');\"><? echo Q_CONTINUE; ?><\/a><\/span><\/div>\n\t\t<div id=\"qstbg\" class=\"barracks\"><\/div>\n\t\t","number":20,"reward":{"wood":70,"clay":100,"iron":90,"crop":100},"qgsrc":"q_l<?php echo $session->userinfo['tribe'];?>g","msrc":"<?php echo $messagelol; ?>","altstep":0}
<?php } ?>

<?php } elseif($_SESSION['qst']== 18){

// Checking 2 warrior trained or no
$units = $village->unitall;
$unarray=array("","Legionnaire", "Clubswinger","Phalanx");
$unarray2=array("","u1", "u11","u21");
if ($units[$unarray2[$session->userinfo['tribe']]]<2){ ?>
{"markup":"\n\t\t<div id=\"qstd\"><h1> <img class=\"point\" src=\"img\/x.gif\" alt=\"\" title=\"\"\/> <? echo Q18; ?><\/h1><br \/><i>&bdquo;<?php echo Q18_DESC.$unarray[$session->userinfo['tribe']];?>.&rdquo;<\/i><br \/><br \/><div class=\"rew\"><p class=\"ta_aw\"><? echo Q_ORDER; ?></p><? echo Q18_ORDER.$unarray[$session->userinfo['tribe']];?>.<\/div><br \/><span id=\"qst_accpt\"><\/span><\/div>\n\t\t<div id=\"qstbg\" class=\"units\"><\/div>\n\t\t","number":"-21","reward":false,"qgsrc":"q_l<?php echo $session->userinfo['tribe'];?>","msrc":"<?php echo $messagelol; ?>","altstep":0}
<?php }else{ ?>
{"markup":"\n\t\t<div id=\"qstd\"><h1> <img class=\"point\" src=\"img\/x.gif\" alt=\"\" title=\"\"\/> <? echo Q18; ?><\/h1><br \/><i>&bdquo;<? echo Q18_RESP1; ?>\r\n<br \/><br \/>\r\n<? echo Q18_RESP2; ?>&rdquo;<\/i><br \/><br \/><div class=\"rew\"><p class=\"ta_aw\"><input type=\"hidden\" id=\"qst_val\" value=\"2\" \/><? echo Q_REWARD; ?></p><img src=\"img\/x.gif\" class=\"r1\" alt=\"<? echo LUMBER; ?>\" title=\"<? echo LUMBER; ?>\" \/>300&nbsp;&nbsp;<img src=\"img\/x.gif\" class=\"r2\" alt=\"<? echo CLAY; ?>\" title=\"<? echo CLAY; ?>\" \/>320&nbsp;&nbsp;<img src=\"img\/x.gif\" class=\"r3\" alt=\"<? echo IRON; ?>\" title=\"<? echo IRON; ?>\" \/>360&nbsp;&nbsp;<img src=\"img\/x.gif\" class=\"r4\" alt=\"<? echo CROP; ?>\" title=\"Crop\" \/>570&nbsp;&nbsp;<\/div><br \/><span id=\"qst_accpt\"><a href=\"javascript: qst_next('','22');\"><? echo Q_CONTINUE; ?><\/a><\/span><\/div>\n\t\t<div id=\"qstbg\" class=\"units\"><\/div>\n\t\t","number":21,"reward":{"wood":300,"clay":320,"iron":360,"crop":570},"qgsrc":"q_l<?php echo $session->userinfo['tribe'];?>g","msrc":"<?php echo $messagelol; ?>","altstep":0}
<?php } ?>

<?php } elseif($_SESSION['qst']== 19){

// Checking granary builded or no
$granary = $building->getTypeLevel(11);
if ($granary ==0){ ?>
{"markup":"\n\t\t<div id=\"qstd\"><h1> <img class=\"point\" src=\"img\/x.gif\" alt=\"\" title=\"\"\/> <? echo Q19; ?><\/h1><br \/><i>&bdquo;<? echo Q19_DESC; ?>&rdquo;<br \/><br \/><div class=\"rew\"><p class=\"ta_aw\"><? echo Q_ORDER; ?></p><? echo Q19_ORDER; ?><\/div><br \/><span id=\"qst_accpt\"><\/span><\/div>\n\t\t<div id=\"qstbg\" class=\"granary_rally\"><\/div>\n\t\t","number":"-19","reward":false,"qgsrc":"q_l<?php echo $session->userinfo['tribe'];?>","msrc":"<?php echo $messagelol; ?>","altstep":0}
<?php }else{ ?>
{"markup":"\n\t\t<div id=\"qstd\"><h1> <img class=\"point\" src=\"img\/x.gif\" alt=\"\" title=\"\"\/> <? echo Q19; ?><\/h1><br \/><i>&bdquo;<? echo Q19_RESP; ?>&rdquo;<\/i><br \/><br \/><div class=\"rew\"><p class=\"ta_aw\"><input type=\"hidden\" id=\"qst_val\" value=\"2\" \/><? echo Q_REWARD; ?></p><img src=\"img\/x.gif\" class=\"r1\" alt=\"<? echo LUMBER; ?>\" title=\"<? echo LUMBER; ?>\" \/>80&nbsp;&nbsp;<img src=\"img\/x.gif\" class=\"r2\" alt=\"<? echo CLAY; ?>\" title=\"<? echo CLAY; ?>\" \/>90&nbsp;&nbsp;<img src=\"img\/x.gif\" class=\"r3\" alt=\"<? echo IRON; ?>\" title=\"<? echo IRON; ?>\" \/>60&nbsp;&nbsp;<img src=\"img\/x.gif\" class=\"r4\" alt=\"<? echo CROP; ?>\" title=\"Crop\" \/>40&nbsp;&nbsp;<\/div><br \/><span id=\"qst_accpt\"><a href=\"javascript: qst_next('','20');\"><? echo Q_CONTINUE; ?><\/a><\/span><\/div>\n\t\t<div id=\"qstbg\" class=\"granary_rally\"><\/div>\n\t\t","number":19,"reward":{"wood":80,"clay":90,"iron":60,"crop":40},"qgsrc":"q_l<?php echo $session->userinfo['tribe'];?>g","msrc":"<?php echo $messagelol; ?>","altstep":0}
<?php } ?>

<?php } elseif($_SESSION['qst']==20){

// Checking warehouse builded or no
$warehouse = $building->getTypeLevel(10);
if ($warehouse==0){ ?>
{"markup":"\n\t\t<div id=\"qstd\"><h1> <img class=\"point\" src=\"img\/x.gif\" alt=\"\" title=\"\"\/> <? echo Q20; ?><\/h1><br \/><i>&bdquo;<? echo Q20_DESC; ?>&rdquo;\r\n<br><br>\r\n<\/i><div class=\"rew\"><p class=\"ta_aw\"><? echo Q_ORDER; ?></p><? echo Q20_ORDER; ?><\/div><br \/><span id=\"qst_accpt\"><\/span><\/div>\n\t\t<div id=\"qstbg\" class=\"warehouse\"><\/div>\n\t\t","number":"-20","reward":false,"qgsrc":"q_l<?php echo $session->userinfo['tribe'];?>","msrc":"<?php echo $messagelol; ?>","altstep":0}
<?php }else{ ?>
{"markup":"\n\t\t<div id=\"qstd\"><h1> <img class=\"point\" src=\"img\/x.gif\" alt=\"\" title=\"\"\/> <? echo Q20; ?><\/h1><br \/><i>&bdquo;<? echo Q20_RESP1; ?>&rdquo;<\/i><br \/><? echo Q20_RESP2; ?><br \/><br \/><div class=\"rew\"><p class=\"ta_aw\"><input type=\"hidden\" id=\"qst_val\" value=\"2\" \/><? echo Q_REWARD; ?></p><img src=\"img\/x.gif\" class=\"r1\" alt=\"<? echo LUMBER; ?>\" title=\"<? echo LUMBER; ?>\" \/>70&nbsp;&nbsp;<img src=\"img\/x.gif\" class=\"r2\" alt=\"<? echo CLAY; ?>\" title=\"<? echo CLAY; ?>\" \/>120&nbsp;&nbsp;<img src=\"img\/x.gif\" class=\"r3\" alt=\"<? echo IRON; ?>\" title=\"<? echo IRON; ?>\" \/>90&nbsp;&nbsp;<img src=\"img\/x.gif\" class=\"r4\" alt=\"<? echo CROP; ?>\" title=\"Crop\" \/>50&nbsp;&nbsp;<\/div><br \/><span id=\"qst_accpt\"><a href=\"javascript: qst_next('','21');\"><? echo Q_CONTINUE; ?><\/a><\/span><\/div>\n\t\t<div id=\"qstbg\" class=\"warehouse\"><\/div>\n\t\t","number":20,"reward":{"wood":70,"clay":120,"iron":90,"crop":50},"qgsrc":"q_l<?php echo $session->userinfo['tribe'];?>g","msrc":"<?php echo $messagelol; ?>","altstep":0}
<?php } ?>

<?php } elseif($_SESSION['qst']== 21){

// Checking market builded or no
$market = $building->getTypeLevel(17);
if ($market==0){ ?>
{"markup":"\n\t\t<div id=\"qstd\"><h1> <img class=\"point\" src=\"img\/x.gif\" alt=\"\" title=\"\"\/> <? echo Q21; ?><\/h1><br \/><i>&bdquo;<? echo Q21_DESC; ?>&rdquo;<\/i><br \/><br \/><div class=\"rew\"><p class=\"ta_aw\"><? echo Q_ORDER; ?></p><? echo Q21_ORDER; ?><\/div><br \/><span id=\"qst_accpt\"><\/span><\/div>\n\t\t<div id=\"qstbg\" class=\"market\"><\/div>\n\t\t","number":"-21","reward":false,"qgsrc":"q_l<?php echo $session->userinfo['tribe'];?>","msrc":"<?php echo $messagelol; ?>","altstep":0}
<?php }else{ ?>
{"markup":"\n\t\t<div id=\"qstd\"><h1> <img class=\"point\" src=\"img\/x.gif\" alt=\"\" title=\"\"\/> <? echo Q21; ?><\/h1><br \/><i>&bdquo;<? echo Q21_RESP; ?>&rdquo;<\/i><br \/><br \/><div class=\"rew\"><p class=\"ta_aw\"><input type=\"hidden\" id=\"qst_val\" value=\"2\" \/><? echo Q_REWARD; ?></p><img src=\"img\/x.gif\" class=\"r1\" alt=\"<? echo LUMBER; ?>\" title=\"<? echo LUMBER; ?>\" \/>200&nbsp;&nbsp;<img src=\"img\/x.gif\" class=\"r2\" alt=\"<? echo CLAY; ?>\" title=\"<? echo CLAY; ?>\" \/>200&nbsp;&nbsp;<img src=\"img\/x.gif\" class=\"r3\" alt=\"<? echo IRON; ?>\" title=\"<? echo IRON; ?>\" \/>700&nbsp;&nbsp;<img src=\"img\/x.gif\" class=\"r4\" alt=\"<? echo CROP; ?>\" title=\"Crop\" \/>450&nbsp;&nbsp;<\/div><br \/><span id=\"qst_accpt\"><a href=\"javascript: qst_next('','22');\"><? echo Q_CONTINUE; ?><\/a><\/span><\/div>\n\t\t<div id=\"qstbg\" class=\"market\"><\/div>\n\t\t","number":21,"reward":{"wood":300,"clay":320,"iron":360,"crop":570},"qgsrc":"q_l<?php echo $session->userinfo['tribe'];?>g","msrc":"<?php echo $messagelol; ?>","altstep":0}
<?php } ?>

<?php } elseif($_SESSION['qst']== 22){

// Checking all resource lvl are 2 or upper
$tRes = $database->getResourceLevel($session->villages[0]);
$ironL=0;$clayL=0;$woodL=0;$cropL=0;
if($tRes['f4']>1){$ironL++;};if($tRes['f7']>1){$ironL++;};if($tRes['f10']>1){$ironL++;};if($tRes['f11']>1){$ironL++;}
if($tRes['f5']>1){$clayL++;};if($tRes['f6']>1){$clayL++;};if($tRes['f16']>1){$clayL++;};if($tRes['f18']>1){$clayL++;}
if($tRes['f1']>1){$woodL++;};if($tRes['f3']>1){$woodL++;};if($tRes['f14']>1){$woodL++;};if($tRes['f17']>1){$woodL++;}
if($tRes['f2']>1){$cropL++;};if($tRes['f8']>1){$cropL++;};if($tRes['f9']>1){$cropL++;};if($tRes['f12']>1){$cropL++;};if($tRes['f13']>1){$cropL++;};if($tRes['f15']>1){$cropL++;}
if ($ironL<4 || $clayL<4 || $woodL<4 || $cropL<6){?>
{"markup":"\n\t\t<div id=\"qstd\"><h1> <img class=\"point\" src=\"img\/x.gif\" alt=\"\" title=\"\"\/> <? echo Q22; ?><\/h1><br \/><i>&bdquo;<? echo Q22_DESC; ?>&rdquo;<\/i><br \/><br \/><div class=\"rew\"><p class=\"ta_aw\"><? echo Q_ORDER; ?></p><? echo Q22_ORDER; ?><\/div><br \/><span id=\"qst_accpt\"><\/span><\/div>\n\t\t<div id=\"qstbg\" class=\"allres\"><\/div>\n\t\t","number":"-22","reward":false,"qgsrc":"q_l<?php echo $session->userinfo['tribe'];?>","msrc":"<?php echo $messagelol; ?>","altstep":0}
<?php }else{ ?>
{"markup":"\n\t\t<div id=\"qstd\"><h1> <img class=\"point\" src=\"img\/x.gif\" alt=\"\" title=\"\"\/> <? echo Q22; ?><\/h1><br \/><i>&bdquo;<? echo Q22_RESP; ?>&rdquo;<\/i><br \/><br \/><div class=\"rew\"><p class=\"ta_aw\"><input type=\"hidden\" id=\"qst_val\" value=\"2\" \/><? echo Q_REWARD; ?></p>15 <? echo GOLD_NAME; ?><br \/><\/div><br \/><span id=\"qst_accpt\"><a href=\"javascript: qst_next('','23');\"><? echo Q_CONTINUE; ?><\/a><\/span><\/div>\n\t\t<div id=\"qstbg\" class=\"allres\"><\/div>\n\t\t","number":22,"reward":{"gold":15},"qgsrc":"q_l<?php echo $session->userinfo['tribe'];?>g","msrc":"<?php echo $messagelol; ?>","altstep":0}
<?php } ?>

// End tasks message
<?php } elseif($_SESSION['qst']== 23){
$database->updateUserField($_SESSION['username'],'quest','24',0);
$_SESSION['qst']= 24; ?>
{"markup":"\n\t\t<div id=\"qstd\"><h1> <img class=\"point\" src=\"img\/x.gif\" alt=\"\" title=\"\"\/> <? echo Q_TASKS; ?><\/h1><br \/><i>&bdquo;<?php if ($skiped==true){echo Q_SKIPED.' <br \/> '.Q_REWARD.' 25 '.GOLD_NAME.'.' ;}else{echo Q_ACHIEVED;}?>&rdquo;<\/i><br \/><span id=\"qst_accpt\"><\/span><\/div>\n\t\t<div id=\"qstbg\" class=\"intro\"><\/div>\n\t\t","number":-25,"reward":false,"qgsrc":"q_l<?php echo $session->userinfo['tribe'];?>","msrc":"i2","altstep":0}

<?php } else { ?>

<?php }?>
