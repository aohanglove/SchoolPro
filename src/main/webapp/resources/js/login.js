$(document).ready(function() {
	$("#submit").click(function(){
		if ($("#userName").val() == '') {
			$("#nameerror").show();
			return;
		}
		
		if ($("#password").val() == '') {
			$("#passerror").show();
			return;
		}
		
		var data = {};
		data['userName'] = $("#userName").val();
		data['passWord'] = $("#password").val();
		$.ajax({
			url:"/login",
			
		});
	});
});