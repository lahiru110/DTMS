

$(document).ready(function() {
	$('#loginbtn').click(function() {

		$.ajax({
		    type : 'GET',
			url : '/web/login',
			data : {
				email : $('#email').val(),
				password :$('#password').val()
			},
			success : function(responseText) {
			if(responseText=='false')
				$('#ajaxvalidation').text('login error');
			}
		});
	});
});