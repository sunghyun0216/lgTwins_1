/**
 * 
 */
//전날

//$("#all").click(function(){
//$(".check").click(function(){

$(".go-prev").click(function(){
		alert("z");
	});


$(function(){
	let today = new Date();
	let yestertday = new Date(today.setDate(today.getDate()-1));
	
	$(".go-prev").click(function(){
		alert("z");
	});
	
});

//현재날짜 표시
$(function(){
	let date = new Date();
	let yyyy = date.getFullYear();
	let mm = date.getMonth()+1;
	let dd = date.getDate();
	
	$(".go-today").append('<div id="yearMonthDate" style="width:130px;">'+yyyy+'년 ' +mm+'월 '+dd+'일 </div>');

});

//담날
$(function(){
	let today = new Date();
	let tomorrow = new Date(today.setDate(today.getDate()+1));
	
});