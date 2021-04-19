/**
 * 
 */
 
 let score = document.getElementById("score");
 let scoreCheckResult = false;
 
score.addEventListener("click", function(){
	alert("숫자만 입력가능합니다.");
});
 
$("#btnUpdate").click(function(){
	let result = true;
	alert("정보가 변경됩니다."); 
	
//	console.log($("#orderNum").val());
	
	let frm = document.getElementById("frmUpdate");
	if(result){
		$("#frmUpdate").submit();
	}else {
		alert("필수 요소를 입력하세요");
	}
	
});
