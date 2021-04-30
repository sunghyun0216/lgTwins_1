/**
 * 
 */

$("#btnUpdate3").click(function(){
	let result = true;
	alert("정보가 변경됩니다."); 
	
	let frm = document.getElementById("frmUpdate3");
	if(result){
		$("#frmUpdate3").submit();
	}else {
		alert("필수 요소를 입력하세요");
	}
	
});