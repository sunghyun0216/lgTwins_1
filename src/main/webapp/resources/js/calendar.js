/**
 * 
 */

//현재날짜 표시
$(function(){
	let date = new Date();
	let yyyy = date.getFullYear();
	let mm = date.getMonth()+1;
	let dd = date.getDate();
	//이게 오늘날짜값
	let rseult = yyyy + '년 ' + mm + '월 ' + dd + '일';

	$("#datepicker2").val(rseult);
	
});

