/**
 * 
 */
$("#btn").click(function(){
	let result = true;
	alert("새로운 정보를 등록합니다.");
	console.log($("#team").val());
	
	let frm = document.getElementById("frm");
	if(result){
		$("#frm").submit();
	}else {
		alert("필수 요소를 입력하세요");
	}
	
	
});

let id = document.getElementById("team");
let score = document.getElementById("team");
let place = document.getElementById("place");
let playDate = document.getElementById("playDate");
let playing = document.getElementById("playing");
let wwl = document.getElementById("wwl");

let teamCheckResult = false;
let scoreCheckResult = false;
let placeCheckResult = false;
let playCheckDateResult = false;
let playingCheckResult = false;
let wwlCheckResult = false;

id.addEventListener("blur", function(){
	let message = "팀명은 2글자 이상입니다.";
	let c= "r1";
	if(id.value.length>=2){
		message ="확인 되었습니다.";
		c="r2";
		teamCheckResult=true;
	} else{
		teamCheckResult=false;
	}
	let teamResult = document.getElementById("teamResult")
	teamResult.innerHTML=message;
	teamResult.setAttribute("class",c);
		
});




