/**
 * 
 */
 alert('불러오기!');
/*해당 경우는 일반 자바 스크립트 사용한다.*/
/*변수 선언 */
let coach = document.getElementById("coach");	// 요소 input를 선택함.
let player = document.getElementById("player"); //요소 input을 선택함
//그룹 선택
let selectG = document.getElementById("teamgroup"); //그룹 선택

let selectCP = document.getElementById("CPosition"); //포지션 선택
let selectPP = document.getElementById("PPosition");

let gs = document.getElementByName("tgNum"); //input창
let ps = document.getElementByName("tpNum"); //input창

//usehand 이벤트 핸들러 등록
let hand1 = document.getElementsByName("useHand1");
let hand2 = document.getElementsByName("useHand2");

let usehand = document.getElementByName("useHand");
let usetext = "";

coach.addEventListener("select", coachInsert);	// 선택한 요소에 click 이벤트 리스너를 등록함.
player.addEventListener("select",playerInsert);


//0. 코치 선수 선택시, 
//1. 코치라면 > 1. 선수단 제외시킴, 2. 포지션 코치용 활성화 3. radio 잠그고 usehand '해당없음으로 바꾸기'

//2. 선수라면 > 1. 선수단 자동 선택, disabled 속성 추가 2포지션 선수용 활성화 4.usehand 활성화 5. usehand value조합기 사용하기
