function CheckAddPlayer() {
    

    document.newPlayer.submit();
}

function CheckMemberInfo() {
    var user_id = document.getElementById("userId");
    var nickname = document.getElementById("nickname");
    var password = document.getElementById("password");
    var password_correct = document.getElementById("password_correct");

    if (user_id.value == "") {
        alert("아이디를 입력해주세요");
        user_id.focus();
        return false;
    }

    if (nickname.value == "") {
        alert("닉네임을 입력해주세요");
        nickname.focus();
        return false;
    }

    if (password.value == "") {
        alert("비밀번호를 입력해주세요");
        password.focus();
        return false;
    }

    if (password_correct.value == "") {
        alert("비밀번호를 입력해주세요");
        password_correct.focus();
        return false;
    } else if (password.value != password_correct.value) {
        alert("비밀번호를 다시 확인해주세요");
        password_correct.focus();
        return false;
    }

    document.member_info.submit();
}