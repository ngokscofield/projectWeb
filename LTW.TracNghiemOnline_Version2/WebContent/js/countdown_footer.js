
var target_date = new Date().getTime() + (1000 * 60 * 720); // set the countdown date
var days, hours, minutes, seconds; // variables for time units
var countdown = document.getElementById("countdown"); // get tag element
var txtHour = document.getElementById("hour");
var txtMinute = document.getElementById("minute");
var txtSecond = document.getElementById("second");
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
       // location = 'sub';      
       return 0;
	}
	
	// format countdown string + set tag value
	txtHour.innerHTML  = hours;
	txtMinute.innerHTML = minutes;
	txtSecond.innerHTML = seconds			
}
function pad(n) {
	if(n<0) return '00'; 
	return (n < 10 ? '0' : '') + n;
}