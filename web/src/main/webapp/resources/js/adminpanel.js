$(document).ready(function(){
$("#add_member").click(function(){
  $('#pop-outer').fadeIn(200)
});
$(".close").click(function(){
  $('#pop-outer').fadeOut(200);
});


});



$(document).ready(function(){
    $(".Calendar").show();
    $(".Events").hide();
    $(".Profile").hide();
    $(".Leaves").hide();
  $(".calendarnav").click(function(){
    $(".Calendar").show();
    $(".Events").hide();
    $(".Profile").hide();
    $(".Leaves").hide();
  });
  $(".profilenav").click(function(){
    $(".Calendar").hide();
    $(".Events").hide();
    $(".Profile").show();
    $(".Leaves").hide();
  });
  $(".leavesnav").click(function(){
    $(".Calendar").hide();
    $(".Events").hide();
    $(".Profile").hide();
    $(".Leaves").show();
  });
  $(".eventsnav").click(function(){
    $(".Calendar").hide();
    $(".Events").show();
    $(".Profile").hide();
    $(".Leaves").hide();
  });


});


$(document).ready(function(){


             $.ajax({
                    type : 'GET',
                    url : '${pageContext.request.contextPath}/EmployeeController/employeelist',
                    dataType : 'json',
                    contentType : 'application/json',
                    success : function(data) {
                      if(data!=null){
                      var obj = JSON.stringify(data);
                      var i;
                      if(obj!=null){

                      }
                      else if(obj==null){

                      }
                      $.each(data, function(i, employee){
                      						var employee = "<td> " + employee.employeeID +
                      						"</td><td>" + employee.firstname +
                      						"</td><td>" + employee.surname +
                      						"</td><td> " + employee.designation +"</td>";

                      						$('#allEmployee .list-employee').append('<tr id="employeeTableRow">' + employee + '</td>');
                      			        });



$.each(data, function(i, employee){
                      						var employee =
                      						"<td><b><font size='4px' color='#f2B134'>" + employee.firstname +
                      						 " "+employee.surname +
                      						"</b></font><br><font size='2px' color='#ffffff'> " + employee.designation +"</font><br></td>";

                      						$('#team_members .team').append('<tr>' + employee + '<tr>');
                      			        });





                      					// just re-css for result-div
                      					$('#list-employee').css({'background-color':'#D16953', 'color':'white', 'padding':'20px 20px 5px 30px'});
$('#employeeTableRow').css({'background-color':'#7f7f7f', 'color':'white', 'padding':'20px','margin':'20px'});



                     }
                      else if(data==null){
                      alert('null');
                      }
                    },
                    error : function() {
                        alert('error');
                    }
                });









});







$( document ).ready(function() {

	// SUBMIT FORM
    $("#employeeForm").submit(function(event) {
		// Prevent the form from submitting via the browser.
		event.preventDefault();
		ajaxPost();
	});


    function ajaxPost(){

    	// PREPARE FORM DATA
    	var formData = {
    		firstname : $("#firstname").val(),
    		surname :  $("#surname").val(),
		designation :  $("#designation").val(),
		email :  $("#email").val()
    	}

    	// DO POST
    	$.ajax({
			type : "POST",
			contentType : "application/json",
			url : '${pageContext.request.contextPath}/EmployeeController/addNewEmployee',
			data : JSON.stringify(formData),
			success : function(result) {

				console.log(result);
				document.getElementById("getResultDiv").innerHTML = result;
			},
			error : function(e) {
				alert("Error!")
				console.log("ERROR: ", e);
			}
		});

    	// Reset FormData after Posting
    	resetData();

    }

    function resetData(){
    	$("#firstname").val("");
    	$("#surname").val("");
    	$("#designation").val("");
    	$("#email").val("");
    }
})