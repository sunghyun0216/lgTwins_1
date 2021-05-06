/**
 * 
 */
    $('#check').click(function() {
            
        var shopCode = $('#shopCode').val();
        var adminPw = $('#adminPw').val();
        var memberBirth = $('#memberBirth').val();         
            
        // ajax 호출을 위한 정보 기입
        var request = $.ajax({
            url: "/spendAdminCheck", // 호출 url
            method: "POST", // 전송방식
           data: {shopCode, adminPw, memberBirth}, // 파라미터
            dataType: "text" // 전송 받을 타입 ex) xml, html, text, json
        });
             
        // 호출 정상일 시 실행되는 메서드
        request.done(function( data ) {
            console.log(data);
        });
 
        // 호출 에러일 시 실행되는 메서드
        request.fail(function( jqXHR, textStatus ) {
            alert( "Request failed: " + textStatus );
        });
 
        // 호출 정상 또는 에러 상관없이 실행
        request.always(function() {
            console.log('완료');
        });
    });