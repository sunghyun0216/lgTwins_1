/**
 * 
 */

$("#btnUpdate").click(function(){
	let result = true;
	alert("정보가 변경됩니다."); 
	
	let frm = document.getElementById("frmUpdate2");
	if(result){
		$("#frmUpdate2").submit();
	}else {
		alert("필수 요소를 입력하세요");
	}
	
});