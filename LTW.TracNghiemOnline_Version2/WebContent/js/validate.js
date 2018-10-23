function validate(){
	var password = document.getElementById("password");
	var confirm_password = document.getElementById("confirm_password");
	//alert(password.value);
	//alert(confirm_password.value);
	
	if(password.value != confirm_password.value){
		confirm_password.style.borderColor = "red";
		confirm_password.title = "Mật khẩu nhập lại không khớp";
		return false;
	}
	else {
		return true;
	}
}