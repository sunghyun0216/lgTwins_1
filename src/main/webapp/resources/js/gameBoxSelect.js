/**
 * 
 */
 $("#btn").click(function(){
	let result = true;
	alert("정보가 변경됩니다.");
	
	let frm = document.getElementById("frm");
	if(result){
		$("#frm").submit();
	}else {
		alert("필수 요소를 입력하세요");
	}
	
});
