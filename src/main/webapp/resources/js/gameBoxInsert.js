/**
 * 
 */

let text = document.getElementById("text");
let score = document.getElementById("score");
let place = document.getElementById("place");
let playDate = document.getElementById("playDate");
let playTime = document.getElementById("playTime");
let playing = document.getElementById("playing");
let wwl = document.getElementById("wwl");

let teamCheckResult = false;
let scoreCheckResult = false;
let placeCheckResult = false;
let playCheckDateResult = false;
let	playChecktimeResult = false;

$("#btn").click(function(){
	alert("새로운 정보를 등록합니다.");
	let result = true;
	console.log($("#team").val());
	
	
	if(teamCheckResult&&scoreCheckResult&&placeCheckResult&&playCheckDateResult&&playChecktimeResult){
		let frm = document.getElementById("frm");
		$("#frm").submit();
	}
	
	
});




//id.addEventListener("blur", function(){
//	let message = "팀명은 2글자 이상입니다.";
//	let c= "r1";
//	if(id.value.length>=2){
//		message ="확인 되었습니다.";
//		c="r2";
//		teamCheckResult=true;
//	} else{
//		teamCheckResult=false;
//	}
//	let teamResult = document.getElementById("teamResult")
//	teamResult.innerHTML=message;
//	teamResult.setAttribute("class",c);
//		
//});
$("#score").click(function(){
	alert("숫자만 입력가능합니다.");
});

//place.addEventListener("blur", function(){
//	let message = "장소는 2글자 이상입니다.";
//	let c= "r1";
//	if(place.value.length>=2){
//		message ="확인 되었습니다.";
//		c="r2";
//		placeCheckResult=true;
//	} else{
//		placeCheckResult=false;
//	}
//	let placeResult = document.getElementById("placeResult")
//	placeResult.innerHTML=message;
//	placeResult.setAttribute("class",c);	
//});



