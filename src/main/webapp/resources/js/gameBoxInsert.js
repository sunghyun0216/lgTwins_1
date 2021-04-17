/**
 * 
 */

$("#btn").click(function(){
	let result = true;
	alert("새로운 정보를 등록합니다.");
	console.log($("#team").val());
	
	let frm = document.getElementById("frm");
	if(result){
		console.log("오나?");
		$("#frm").submit();
	}else {
		alert("필수 요소를 입력하세요");
	}
	
	
});