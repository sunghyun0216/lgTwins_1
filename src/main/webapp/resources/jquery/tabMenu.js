/**
 * 
 */
var idx = 0
	
	
  $("#next").click(function() {
	if(idx<2){
	idx++
	console.log(idx)
	console.log(result)

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
	console/log(value);
    $(".tab_title li").removeClass("on");
    $(".tab_title li").eq(idx).addClass("on");
    $(".tab_cont > div").hide();
    $(".tab_cont > div").eq(idx).show();
}
  });



