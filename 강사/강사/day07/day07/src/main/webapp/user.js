/**
 * 회원가입 폼 validation check
 * 개발자 : kjh
 * 개발일 : 2023-03-22
 */
function sendit(){
	// 아이디 	: "" , 5자 이상, 16자 미만
	// 비밀번호 	: "" , 8자 이상, 비밀번호 = 비밀번호 확인
	// 이름		: ""
	// 휴대폰번호 	: "" 
	let frm = document.joinForm;
	let userid = frm.userid;
	let userpw = frm.userpw;
	let userpw_re = frm.userpw_re;
	let username = frm.username;
	let userphone = frm.userphone;
	
	if( userid.value == "" ){
		alert("아이디를 입력하세요!");
		userid.focus();
		return false;
	}
	if( userid.value.length <= 4 || userid.value.length >= 16 ){
		alert("아이디는 5자 이상, 16자 미만으로 입력하세요!");
		userid.focus();
		return false;
	}
	if( userpw.value == "" ){
		alert("비밀번호를 입력하세요!");
		userpw.focus();
		return false;
	} else {
		if(userpw.value.length < 8){
			alert("비밀번호는 8자리 이상으로 입력하세요!");
			userpw.focus();
			return false;
		}
	}
	if( userpw.value != userpw_re.value ){
		alert("비밀번호 확인을 다시하세요!");
		userpw.focus();
		return false;
	}
	if( username.value == "" ){
		alert("이름을 입력하세요!");
		username.focus();
		return false;
	}
	if( userphone.value == "" ){
		alert("휴대폰번호를 입력하세요!");
		userphone.focus();
		return false;
	}
		
	frm.submit();
}














