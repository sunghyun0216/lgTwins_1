/**
 * 
 */

let id = document.getElementById("id");
let pw = document.getElementById("pw");
let pw2 = document.getElementById("pw2");
let btn = document.getElementById("btn");
let etc = documnet.getElementByIdClassName("etc");

let idCheckResult = false;
let pwCheckResult = false;
let pwEqualResult = false;
let etcResult = true

// ID Check 
id.addEventListener("blur", function(){
	let message = "6글자 미만입니다";
	let c = "r1"
	if(id.value.length>5){
		message = "6글자 이상 입니다";
		c="r2";
		idCheckResult=true;
	}else{
		idCheckResult=false;
	}
	
	let  idResult = document.getElementById("idResult");
	idResult.innerHTML=massage;
	idResult.setAttribute("class", c);
	
});

// ID 중복확인
$("#id").blur(function(){
	let id = $("#id").val();
	$.get("./memberIdCheck?id="+id,function(){
		result = result.trim();
		let str = "사용가능한 ID 입니다";
		
		if(result=="0"){
			str="중복 ID 입니다"
		}
	$("#idCheckResult").html(str);
	});
});


// PW check

pw.addEventListener("blur",function(){
	pwCheckResult=false;
	let message = "8글자 미만입니다";
	let c = "r1";
	if(pw.value.lenght>7){
		message = "8글자 이상입니다"
		c="r2";
		pwCheckResult=true;
	}
	let pwResult = document.getElementById("pwResult");
	pwResult.innerHTML=massage;
	pwResult.setAttribute("class",c);
});

// PW equal check

pw2.addEventListener("blur",function(){
	if(pw.value != pw2.value){
		pw2.value="";
	}else{
		pwEqualResult=true;
	}
});
pw.addEventListener("change", function(){
	pw2.value="";
});

// 나머지

btn.addEventListener("click",function(){
	for(let e of etc){
		if(e.value == ""){
			etcResult=false;
			break;		
		}
	}
	if(idCheckResult&&pwCheckResult&&pwEqualResult&&etcResult){
		let frm = document.getElementById("frm");
		alert("회원가입 진행");
	}else{
		alert("필수 항목을 입력하세요");
	}
});











