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

let del = document.getElementById("delete");
let frmDelete = document.getElementById("frmDelete");
let orderNum = $("#orderNum").val();
		
console.log(orderNum);

del.addEventListener("click", function() {
	let result = confirm("정말 삭제하시겠습니까?");

		if (result) {
			frmDelete.setAttribute("method", "post");
			frmDelete.submit();
			}
		});
