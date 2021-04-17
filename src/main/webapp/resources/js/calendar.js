/**
 * 
 */

$(function(){
	let date = new Date();
	let yyyy = date.getFullYear();
	let mm = date.getMonth()+1;
	let dd = date.getDate();
	
	$(".upper").append('<div id="year">'+yyyy+'년 </div>');
	$(".upper").append('<div id="month">'+mm+'월 </div>');
	$(".upper").append('<div id="date">'+dd+'일</div>');
	
});