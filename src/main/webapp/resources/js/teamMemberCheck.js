function inputusehand(){
	var h1 = $("select[name=useHand1] option:selected").text();
  var h2 = $("select[name=useHand2] option:selected").text();
  var str = h1 + h2 ;
  $("#usehand").attr('value', str);
  $("#usehand").attr('text', str);
}
function inputGroup(){
	var str = $("#teamgroup option:selected").val();
  $("#h1").attr('value', str);
  $("#h1").attr('text', str);
}
function inputPositionP(){
	var str = $("#PPosition option:selected").val();
  $("#h2").attr('value', str);
  $("#h2").attr('text', str);
}
function inputPositionC(){
	var str = $("#CPosition option:selected").val();
  $("#h2").attr('value', str);
  $("#h2").attr('text', str);
}
function checkBoxCP(){
  if($('input:radio[id=coach]').is(':checked')){
        
        $('#PPosition').attr('disabled', true);
        $('#CPosition').attr('disabled', false);
        
        //선수단만  비활성화
        //h2포지션 DB번호 넣기
    }
}
function checkBoxPP(){
  if($('input:radio[id=player]').is(':checked')){
       	$('#PPosition').attr('disabled', false);
        $('#CPosition').attr('disabled', true);
        //선수단 자동 선택
        $("#teamgroup").val("4").prop("selected", true);
        
        $("#h1").attr('value', 4);
    }
}

$("#coach").click(function(event) { 
	checkBoxCP();
});
$("#player").click(function(event) { 
	checkBoxPP();
});
$("#teamgroup").change(function(event) { 
  inputGroup();
});

$("#PPosition").change(function(event) { 
	inputPositionP();
});
$("#CPosition").change(function(event) { 
	inputPositionC();
});
$(".inputusehand").change(function(event) { 
	inputusehand();
});