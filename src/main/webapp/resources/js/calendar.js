/**
 * 
 */

//현재날짜 표시
$(function(){
	console.log($('#dateDate').val());
	let result;
	
	if($('#dateDate').val() != ''){
		console.log("zzzz");
		result = $('#dateDate').val();
		let k= $("#dateDate").val();
		let s= $("#dateDate").val();
		let h= $("#dateDate").val();
		console.log(result);

		let ksh1 = k.substring(0, 4);
		let ksh2 = s.substring(4, 6);
		let ksh3 = h.substring(6, 8);
		console.log(ksh1); 
		console.log(ksh2);
		console.log(ksh3);		
		console.log("------");
		
		result = ksh1+'년 '+ksh2+'월 '+ksh3+'일';
//		$('#dateDate').val(ksh5);
		console.log(result);
//		result = ksh5;
		
	}else{
		let date = new Date();
		let yyyy = date.getFullYear();
		let mm = date.getMonth()+1;
		let dd = date.getDate();
		//이게 오늘날짜값
		if(mm<10){
			mm = "0" + mm;
		}
	
		result = yyyy + '년 ' + mm + '월 ' + dd + '일';
	}
	

	$("#datepicker2").val(result);
});


$("#kiki").click(function(){
	
	let k= $("#datepicker2").val();
	let s= $("#datepicker2").val();
	let h= $("#datepicker2").val();
	
	let ksh1 = k.substring(0, 4);
	let ksh2 = s.substring(6, 8);
	let ksh3 = h.substring(10, 12);
	
	let ksh = ksh1+ksh2+ksh3;
	
	$('#playDate').val(ksh);
	
	console.log($('#playDate').val());
	
	$("#frm").submit();
	
 });




