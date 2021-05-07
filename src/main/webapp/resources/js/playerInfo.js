/**
 * 
 */
 
 //버튼 id 가져오기
  alert('불러오기!');

$("#photo_list").click(function(event) { 
	setDisplay1();
});

$("#career_list").click(function(event) { 
	setDisplay2();
});

$("#pay_list").click(function(event) { 
	setDisplay3();
});

function setDisplay1(){
    if($('input:radio[id=photo_list]').is(':checked')){
        $('#player_photo_List').hide();
    }else{
        $('#player_photo_List').show();
    }
}

function setDisplay2(){
    if($('input:radio[id=career_list]').is(':checked')){
        $('#player_career_info').hide();
    }else{
        $('#player_career_info').show();
    }
}
function setDisplay3(){
    if($('input:radio[id=pay_list]').is(':checked')){
        $('#player_pay_info').hide();
    }else{
        $('#player_pay_infot').show();
    }
}