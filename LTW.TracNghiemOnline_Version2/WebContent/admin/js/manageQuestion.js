function show(index){	
	document.getElementById('tbl-part'+index).style.display = "block";
	for(var i = 1; i <= 7; i++ ){		
		if(i != index){
			//alert(i);
			document.getElementById('tbl-part'+i).style.display = "none";				
		}
	}
}