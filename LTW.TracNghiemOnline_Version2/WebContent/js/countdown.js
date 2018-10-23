// var now = Date.now();
	// this.setInterval(function() {
	// 	var curr = Date.now();
	// 	var hieu = Math.floor(curr - now)/1000;
	// 	var m = Math.floor(hieu / 60);
	// 	var s = Math.floor(hieu % 60);
	// 	document.getElementsByClassName('minute')[0].innerHTML = CheckTime(44 - m) + " phút";
	// 	document.getElementsByClassName('second')[0].innerHTML = CheckTime(59 - s) + " giây";
	// }, 500);
	// function CheckTime(i) {
	// 	return i < 10 ? ("0" + i) : i;
	// }
	var target_date = new Date().getTime() + (1000 * 60 * 45); // set the countdown date
		var days, hours, minutes, seconds; // variables for time units

		var countdown = document.getElementById("tiles"); // get tag element

		getCountdown();
		
		var timeout = setInterval(function() {
			getCountdown();
		}, 1000);

		function getCountdown() {

			// find the amount of "seconds" between now and target
			var current_date = new Date().getTime();
			var seconds_left = (target_date - current_date) / 1000;
			
			days = pad(parseInt(seconds_left / 86400));
			seconds_left = seconds_left % 86400;
			
			hours = pad(parseInt(seconds_left / 3600));
			seconds_left = seconds_left % 3600;

			minutes = pad(parseInt(seconds_left / 60));
			seconds = pad(parseInt(seconds_left % 60));
			
			if(seconds_left < 0) {
				//seconds = pad(parseInt(seconds_left % 60));
				clearTimeout(timeout);
				alert('Hết thời gian làm bài. Bấm để xem kết quả!!!');
		       // location = 'sub';
		      document.submit.submit();
		       return 0;
			}
			
			// format countdown string + set tag value
			document.getElementsByClassName('minute')[0].innerHTML = minutes + " phút";
			document.getElementsByClassName('second')[0].innerHTML = seconds + " giây";
			//countdown.innerHTML = "<span>" + minutes + "</span><span>"
			//		+ seconds + "</span>";
		}

		function pad(n) {
			if(n<0) return '00'; 
			return (n < 10 ? '0' : '') + n;
		}