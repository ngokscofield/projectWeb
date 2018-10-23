var btnAbout = document.getElementById('btn-about');
var btnBasicInfor = document.getElementById('btn-basic-infor');
var btnPassword = document.getElementById('btn-password');

var btnChangePassword = document.getElementById('button-change-password');
var btnUpdateInfor = document.getElementById('button-update-infor');

var detailInfor = document.getElementById('infor-user-detail');
var changePassword = document.getElementById('change-password');
var updateInfor =document.getElementById('update-infor-user');


btnAbout.onclick = function(){	
	changePassword.style.display = "none";
	updateInfor.style.display = "none";
	detailInfor.style.display = "block";
};
btnBasicInfor.onclick = function(){
	detailInfor.style.display = "none";
	changePassword.style.display = "none";
	updateInfor.style.display = "block";
};
btnPassword.onclick = function(){
	detailInfor.style.display = "none";	
	updateInfor.style.display = "none";
	changePassword.style.display = "block";
};
btnChangePassword.onclick = function(){
	detailInfor.style.display = "none";	
	updateInfor.style.display = "none";
	changePassword.style.display = "block";
};
btnUpdateInfor.onclick = function(){
	detailInfor.style.display = "none";		
	changePassword.style.display = "none";
	updateInfor.style.display = "block";
};

function validate(){
	var oldPassword = document.getElementById('oldPassword').value;
	var newPassword = document.getElementById('newPassword').value;
	var re_newPassword = document.getElementById('re-newPassword').value;
	var password_DB = document.getElementById('password-db').value;
	if(oldPassword != password_DB){
		alert("Mật khẩu cũ không chính xác");	
	}
	else if(oldPassword == "" || newPassword == ""|| re_newPassword== ""){
		alert("Ko được bỏ trống dữ liệu");		
	}
	else if(newPassword != re_newPassword){
		alert("Mật khẩu không trùng khớp");		
	}
	else {
		return true;
	}
	return false;
}

var fullname = document.getElementById('fullname');
function validateFormUpdate(){	
	if(fullname.value.length == 0){
		fullname.style.border = "1px solid red";
	}	
	else {
		return true;
	}
	return false;
}
fullname.onblur = function(){
	var input = fullname.value;
	if(input.length == 0){
		fullname.style.border = "1px solid red";
	}
	else {
		fullname.style.borderColor = "none";
	}
};