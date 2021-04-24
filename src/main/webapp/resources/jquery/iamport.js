/*콤보박스*/
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



/*텝메뉴*/
var idx = 0
	
  $("#next").click(function() {
	/*좌석선택안할시 경고창띄어줌*/
	if(idx==1 && price==1 && value2==0){
		console.log("hihi");
		alert('좌석을 선택해주세요');
	}else if(idx<2){
		idx++
		console.log(idx)
	    $(".tab_title li").removeClass("on");
	    $(".tab_title li").eq(idx).addClass("on");
	    $(".tab_cont > div").hide();
	    $(".tab_cont > div").eq(idx).show();
	}
	
	/*가격과 티켓번호생성*/
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

 $("#prev").click(function() {
	if(idx>0){
		idx--
		console.log(idx)
		$(".tab_title li").removeClass("on");
	    $(".tab_title li").eq(idx).addClass("on");
	    $(".tab_cont > div").hide();
	    $(".tab_cont > div").eq(idx).show();
	}
  });


/*아임포트api*/
$("#btn").click(function(){
	IMP.init('iamport');
	
	IMP.request_pay({
	    pg : 'inicis', // version 1.1.0부터 지원.
	    pay_method : 'card',
	    merchant_uid : 'merchant_' + new Date().getTime(),
	    name : '주문명:결제테스트',
	    amount : price, //판매 가격
	    buyer_email : 'iamport@siot.do',
	    buyer_name : '구매자이름',
	    buyer_tel : '010-1234-5678',
	    buyer_addr : '',
	    buyer_postcode : ''
	}, function(rsp) {
	    if ( rsp.success ) {
	        var msg = '결제가 완료되었습니다.';
	        msg += '고유ID : ' + rsp.imp_uid;
	        msg += '상점 거래ID : ' + rsp.merchant_uid;
	        msg += '결제 금액 : ' + rsp.paid_amount;
	        msg += '카드 승인번호 : ' + rsp.apply_num;
	    } else {
	        var msg = '결제에 실패하였습니다.';
	        msg += '에러내용 : ' + rsp.error_msg;
	    }
	    alert(msg);
	});
});