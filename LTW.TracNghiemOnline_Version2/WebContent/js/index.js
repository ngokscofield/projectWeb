window.onload =function(e){	
	var itemExam = document.getElementById('item-fixed-exam');
	itemExam.onclick = function(){
		//C1: sử dụng toggle để ẩn hiện
		//document.getElementById('dropdown-exam').classList.toggle('show');
		
		//C2: Gán display inner ban đầu cho dropdown
		// Sau đó kiểm tra nếu display là none thì chuyển block
		// và ngược lại
		var dropdown = document.getElementById('dropdown-exam');
		if(dropdown.style.display ==""){
			dropdown.style.display = "none";
		}
		if(dropdown.style.display === "none"){
			dropdown.style.display = "block";
		}				
		else {
			dropdown.style.display = "none";
		}
	};			
};
function logout(){
	document.getElementById("logout").submit();
}