/**
 * 
 */
var idx = 0

function handleOnChange(e) {
  // 선택된 데이터의 텍스트값 가져오기
  const text = e.options[e.selectedIndex].text;
  
  // 선택한 텍스트 출력
  document.getElementById('result').innerHTML= text;
}	

	
	
  $("#next").click(function() {
	if(idx<2){
	idx++
	console.log(idx)
    $(".tab_title li").removeClass("on");
    $(".tab_title li").eq(idx).addClass("on");
    $(".tab_cont > div").hide();
    $(".tab_cont > div").eq(idx).show();
}
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



