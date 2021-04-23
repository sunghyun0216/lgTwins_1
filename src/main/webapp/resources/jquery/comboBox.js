/**
 * 
 */
var valResult=0;
var value=0;
var value2=0;
var price=1;

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


	if(value>100 && value<103){
		price=18000;
		
	}else if(value>200 && value<203){
		price=15000;
	}
	else if(value>300 && value<303){
		price=12000;
	}
	else if(value>400 && value<403){
		price=8000;
	}
	console.log(price);
	
	document.getElementById('price').innerText
    = price;

	document.getElementById('price').value
    = price;

  });


