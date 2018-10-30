function getValue(index){
	//var view_row = document.getElementById("view-row-table");
	//view_row.setAttribute('href',"admin-home?"+index);
	
	var delAccount = document.getElementById("frmDelAccount");
	delAccount.setAttribute('action',"./manageAccount?id="+index);	
	var total_record = document.getElementById('record-total').innerHTML;
	for(var i = 1; i <= total_record;i++){
		if(i == index) {
			var row_table = document.getElementById(i);
			row_table.style.backgroundColor = "lightblue";
		}
		else {
			var row_table = document.getElementById(i);
			row_table.style.backgroundColor = "";
		}
	}	
}

function deleteAccount(){
	var clicked = confirm("Bạn có muốn xóa tài khoản này không");
	if(clicked == true){
		frmDelAccount.submit();
	}
}