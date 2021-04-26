/**
 * 
 */

$(function(){
	let today = new Date();
	let yestertday = new Date(today.setDate(today.getDate()-1));
	console.log(yesterday);
	
	$(".go-prev").click(alert("z"))
	
});





$(function(){
	let date = new Date();
	let yyyy = date.getFullYear();
	let mm = date.getMonth()+1;
	let dd = date.getDate();
	
	$(".go-today").append('<div id="yearMonthDate" style="width:130px;">'+yyyy+'년 ' +mm+'월 '+dd+'일 </div>');

});

$(function(){
	let today = new Date();
	let tomorrow = new Date(today.setDate(today.getDate()+1));
	console.log(tomorrow);
});