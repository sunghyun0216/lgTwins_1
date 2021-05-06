/*콤보박스*/
var valResult=0;
var value=0;
var value2=0;
var price=1;
var playDate=document.getElementById("playDate").value

function handleOnChange(e) {
  // 선택된 데이터의 텍스트값 가져오기
  value = e.value;
	console.log(value);

}

function handleOnChange2(e) {
  // 선택된 데이터의 텍스트값 가져오기
   value2 = e.value;

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
	
	valResult = value + value2 + playDate
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
		price=101;
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


 

$('#check').on('click', function(){
	var playDate=document.getElementById("playDate").value
        $.ajax({
            type : "GET", //전송방식을 지정한다 (POST,GET)
            url : "checkTicket?playDate="+playDate,//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
            dataType : "html",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
            error : function(){
                alert("통신실패!!!!");
            },
            success : function(result){
                $("#result").text(result); //div에 받아온 값을 넣는다.
                alert("통신 데이터 값 : " + result);
            }
             
        });
		
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
			var teamName=document.getElementById("team").value
			var teamLogo=document.getElementById("logo").value
			var playTime=document.getElementById("playTime").value
			var id = document.getElementById("id").value
			console.log(teamName);
			console.log(teamLogo);
			console.log(playDate);
		        var form = {
		                team: teamName,
						playDate: playDate,
						playTime: playTime,
						logo: teamLogo,
						sitNum: valResult,
						price: price,
						id: id
		        }
		        $.ajax({
		            url: "writeTicket",
		            type: "POST",
		            data: form,
		            success: function(data){
		                $('#resultDTO').text(data);
		            },
		            error: function(){
		                
		            }
					
		        });
	    } else {
	        var msg = '결제에 실패하였습니다.';
	        msg += '에러내용 : ' + rsp.error_msg;
	    }
	    alert(msg);
		window.close();
	});
});