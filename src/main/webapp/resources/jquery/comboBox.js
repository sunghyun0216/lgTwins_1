/**
 * 
 */
var valResult="";
var value="";
var value2="";

function handleOnChange(e) {
  // 선택된 데이터의 텍스트값 가져오기
  value = e.value;

  
  // 선택한 텍스트 출력
  document.getElementById('result').innerText
    = value;
}

function handleOnChange2(e) {
  // 선택된 데이터의 텍스트값 가져오기
   value2 = e.value;

  
  // 선택한 텍스트 출력
  document.getElementById('result2').innerText
    = value2;
}

 $("#check").click(function() {
	
	valResult = value + value2
	console.log(value);
	console.log(value2);
	console.log(valResult);
	
	document.getElementById('valResult').innerText
    = valResult;
  });
