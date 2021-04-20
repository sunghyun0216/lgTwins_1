/**
 * 
 */

$(function(){
	let date = new Date();
	let yyyy = date.getFullYear();
	let mm = date.getMonth()+1;
	let dd = date.getDate();
	
	$(".go-today").append('<div id="yearMonthDate" style="width:130px;">'+yyyy+'년 ' +mm+'월 '+dd+'일 </div>');

	
});