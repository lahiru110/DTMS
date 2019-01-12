<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    

    <title>BeyondM</title>

    <link rel="stylesheet" href="resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/css/bootstrap-theme.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
   <!-- <script src="resources/js/jquery.min.js"></script> -->
  <!--  <script src="resources/js/validate.js"></script> -->
<script>

$(document).ready(function() {
	$('#loginbtn').click(function() {

		$.ajax({
		    type : 'get',
			url : 'login',
			//contentType: "application/json; charset=utf-8",
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




</script>



</head>


<body style="background-image: url('resources/images/Management-Team-Panamax_Inc.jpg');background-repeat: no-repeat">


<!--container 1 -->


</div>

<div class="container-lg" id="login">
    <div class="container">


        <div class="row">
            <center>
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <br><br><br><br><br>
                    <center>
                        <div class="form-group"
                             style="background:#ffffff;width:400px;margin:10px;padding:20px;border-radius:20px;">
                            <br><br>
                            <img src="resources/images/BeyondM-2016-final.svg" width="300px"></img>
                            <br>
                            <br><font face="arial" size="4px"><b>Welcome To Daily Task Management System</b></font>
                            <hr width="50%" color="black"></hr>
                            <font face="arial" size="3px" style="color:#7f7f7f">Please sign in with your
                                credentials</font><br><br>
                            <form:form name="loginForm" method="post" action="login">

                                <center>
                                    <form:input path="email"/>
                                    <form:password path="password"
                                    <!-- <input type="text" id="email" class="form-control" name="email" placeholder="Email" required><br>

                                    <input type="password" id="password" class="form-control" name="password"
                                           placeholder="Password" required><br>


                                    <button type="submit" id="loginbtn" class="btn" style="background:#fca402">LogIn</button>

                                    <div class="ajaxvalidation" id="ajaxvalidation"></div>
                                    <br><br><font size="2px">Forgot your password?</font><br>
                            </form:form>
                            <br>
                            <hr width="50%"></hr>


                        </div>
                        <div class="col-md-4"></div>
                </div>

        </div>
        <br><br><br><br><br><br><br><br>
    </div>


    <div class="container-lg" style="background:#171f2b;bottom:0px; width:100%">

        <div class="container">


            <div class="row">


            </div>


            <div class="row">


                <div class="col-md-12"><br><font color="#ffffff" size="1px">© 2018 BeyondM. All Rights
                    Reserved.</font><br><br></div>
                </center>

            </div>

        </div>


</body>
</html>