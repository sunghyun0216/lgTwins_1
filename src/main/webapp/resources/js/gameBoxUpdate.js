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
	
	let frm = document.getElementById("frmUpdate");
	if(result){
		$("#frmUpdate").submit();
	}else {
		alert("필수 요소를 입력하세요");
	}
	
});

let update2 = document.getElementById("update2");
let frmUpdate2 = document.getElementById("frmUpdate2");

update2.addEventListener("click", function(){
	alert("zz");
	let result = confirm("변경 하시겠습니까?")
	
	if(result){
		frmUpdate2.setAttribute("method", "post");
		frmUpdate2.submit();
	}
	
});

$("#frmUpdate2").click(function(){
	alert("zz")
});

//let del = document.getElementById("delete");
//let frmDelete = document.getElementById("frmDelete");
//let orderNum = $("#orderNum").val();
//	
$("delete").click(function(){
	
	alert("Z");
});

//$("#btnUpdate").click(function(){	
//
//del.addEventListener("click", function() {
//	alert("Z")
//		});
