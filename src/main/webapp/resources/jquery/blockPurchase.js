/**
 * 
 */
var i1 = document.getElementById('i1').value
var i2 = document.getElementById('i2').value

var month = (parseInt(i1/100) - parseInt(i2/100))*30;
console.log(month);
var day = i1%100 - i2%100;
console.log(day);
var result = '에매오픈 D-'+(month+day);

document.getElementById('result').innerText
    = result;

$("#block").click(function() {
		alert("로그인이 필요합니다.");
		location.href="../../t2/member/memberLogin";
});
