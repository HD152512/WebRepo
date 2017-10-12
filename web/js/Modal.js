$(document).ready(function () {
    $('#RegisterForm').submit(function (event) {
        // submit이 자동으로 되는 기능 막기
        event.preventDefault();

        // id, pwd를 가져오기
//                document.getElementById("id").value
        var name = $('#name').val();
        var number = $('#number').val();
        console.log(name, number);
        // 서버로 post 전송 (ajax)
        $.post("http://httpbin.org/post",
            { "name" : name , "number" : number },
            function (data) {
//                    alert(data.form.name + '님 회원가입되었습니다.');
                var myModal = $('#myModal');
                myModal.modal();
                myModal.find('.modal-body').text(data.form.name + '님 회원가입되었습니다.');
            });
    });
});

$(document).ready(function () {
    $('#SigninForm').submit(function (event) {
        // submit이 자동으로 되는 기능 막기
        event.preventDefault();

        // id, pwd를 가져오기
//                document.getElementById("id").value
        var id = $('#id').val();
        var pwd = $('#pwd').val();
        console.log(id, pwd);
        // 서버로 post 전송 (ajax)
        $.post("http://httpbin.org/post",
            { "id" : id , "pwd" : pwd },
            function (data) {
                var myModal = $('#SigninModal');
                myModal.modal();
                myModal.find('.modal-body').text(data.form.id + '님 로그인되었습니다.');
            });
    });
});