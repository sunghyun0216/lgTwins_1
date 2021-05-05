/**
 * 
 */

$(function(){
	console.log($('#dateDate').val());
	let result;
	
	if($('#dateDate').val() != ''){
		console.log("zzzz");
		result = $('#dateDate').val();
		let k= $("#dateDate").val();
		let s= $("#dateDate").val();
		console.log(result);

		let ksh1 = k.substring(0, 4);
		let ksh2 = s.substring(4, 6);
		
		console.log(ksh1); 
		console.log(ksh2);	
		console.log("------");
		
		result = ksh1+'년 '+ksh2+'월 ';
//		$('#dateDate').val(ksh5);
		console.log(result);
//		result = ksh5;
		
	}else{
		let date = new Date();
		let yyyy = date.getFullYear();
		let mm = date.getMonth()+1;
		//이게 오늘날짜값
		if(mm<10){
			mm = "0" + mm;
		}
	
		result = yyyy + '년 ' + mm + '월';
	}
	
	console.log();
	$("#datepicker2").val(result);
});


$("#kiki").click(function(){
	
	let k= $("#datepicker2").val();
	let s= $("#datepicker2").val();

	let ksh1 = k.substring(0, 4);
	let ksh2 = s.substring(4, 6);

	
	let ksh = ksh1+ksh2;
	
	$('#playDate').val(ksh);
	
	console.log($('#playDate').val());
	
	$("#frm").submit();
	
 });


