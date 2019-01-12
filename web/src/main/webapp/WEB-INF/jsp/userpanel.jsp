<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<title>BeyondM</title>

<link rel="stylesheet" href='<c:url value="/resources/css/bootstrap.min.css"/>'/>
<link rel="stylesheet" href='<c:url value="/resources/css/bootstrap-theme.min.css"/>'>
<!--<script src='<c:url value="/resources/js/jquery.min.js"/>'></script> -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<style>
.sidenav {
    height: 100%;
    width: 300px;
    position: fixed;
    z-index: 1;
    top: 0;
    left: 0;
    background-color:#333645;
    overflow-x: hidden;
    padding-top: 0px;
}

.sidenav a {
    padding: 6px 8px 6px 16px;
    text-decoration: none;

    display: block;
}
#navcontent{
  font-size: 15px;
  color: #ffffff;
  background-color:#333645;
  padding:20px;

}
#navcontent:hover{
    color: #f1f1f1;
    background-color: #202334;

}

.main {
    margin-left: 160px; /* Same as the width of the sidenav */
    font-size: 28px; /* Increased text to enable scrolling */
    padding: 0px 10px;
}

@media screen and (max-height: 450px) {
    .sidenav {padding-top: 15px;}
    .sidenav a {font-size: 18px;}
}
body{
  background: #E4E5E6


}
#maincontent{


  margin-left: 300px;

}
#navtop{

  background:#ffffff;


}

.glyphicon-option-vertical{
  font-size:25px;
  color:#f2B134;
  margin-left:10px;
}
.team{

  margin-left:20px;

}
.team_members{

  max-height:300px;
  overflow-y: scroll;
  margin-right:10px;
}
::-webkit-scrollbar {
    width: 15px;
}

/* Track */
::-webkit-scrollbar-track {
    box-shadow: inset 0 0 5px grey;
    border-radius: 10px;
}

/* Handle */
::-webkit-scrollbar-thumb {
    background:#7f7f7f;
    border-radius: 10px;
}

/* Handle on hover */
::-webkit-scrollbar-thumb:hover {
    background: #f2B134;
}
#add_member{
  background:#333645;
  border-color:white;
}
#add_member:hover{
  background:#f2B134;
  border-color:#f2B134;
}
.dropbtn {
  background-color: #ffffff;
  color: white;
  padding: 16px;
  font-size: 16px;
  border: none;
  cursor: pointer;
}

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropdown-content a:hover {background-color: #f1f1f1}

.dropdown:hover .dropdown-content {
  display: block;
}

.dropdown:hover .dropbtn {
  background-color: #ffffff;

}
#content{


  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);

  padding:10px;
  margin:50px;

}
#content1{




}
.page_content{

  max-height:100%;
  overflow-y: scroll;

}
#pop-outer{
  background-color: rgba(0,0,0,0.5);
  position : fixed;
  top : 0;
  left : 0;
  width :100%;
  height:100;
  height:100%;
}
#pop-inner{
  background-color: #fff;
  margin:100px;padding:20px;border-radius:20px;

}

monthPre{
 color: gray;
 text-align: center;
}
.monthNow{
 color: #7f7f7f;
 text-align: center;
}
.dayNow{
 border: 2px ;
color: #ffffff;
 background-color:#f2B134;;
 text-align: center;
}
.calendar td{
 htmlContent: 2px;
 width: 1000px;
 height :100px;
border: #7f7f7f;
}
.monthNow th{
 background-color: #000000;
 color: #FFFFFF;
 text-align: center;
}
.dayNames{
 background: #7f7f7f;
 color: #FFFFFF;
 text-align: center;
 height: 80px;
}
.tab {
  overflow: hidden;
  border: 1px solid #ccc;
  background-color: #f1f1f1;
}


.tab button {
  background-color: inherit;
  float: left;
  border: none;
  outline: none;
  cursor: pointer;
  padding: 14px 16px;
  transition: 0.3s;
  font-size: 17px;
}

.tab button:hover {
  background-color: #ddd;
}


.tab button.active {
  background-color: #ccc;
}
.switch {
  position: relative;
  display: inline-block;
  width: 60px;
  height: 34px;
}

.switch input {
  opacity: 0;
  width: 0;
  height: 0;
}

.slider {
  position: absolute;
  cursor: pointer;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: #ccc;
  -webkit-transition: .4s;
  transition: .4s;
}

.slider:before {
  position: absolute;
  content: "";
  height: 26px;
  width: 26px;
  left: 4px;
  bottom: 4px;
  background-color: white;
  -webkit-transition: .4s;
  transition: .4s;
}

input:checked + .slider {
  background-color:#f2B134	 ;
}

input:focus + .slider {
  box-shadow: 0 0 1px #ffffff	;
}

input:checked + .slider:before {
  -webkit-transform: translateX(26px);
  -ms-transform: translateX(26px);
  transform: translateX(26px);
}

/* Rounded sliders */
.slider.round {
  border-radius: 34px;
}

.slider.round:before {
  border-radius: 50%;
}
</style>

<script>
$(document).ready(function(){
$("#add_member").click(function(){
  $('#pop-outer').fadeIn(200)
});
$(".close").click(function(){
  $('#pop-outer').fadeOut(200);
});


});


</script>
<script>
$(document).ready(function(){
    $(".Calendar").show();
    $(".Events").hide();
    $(".Task").hide();
    $(".Leaves").hide();
    $(".Profile").hide();
  $(".calendarnav").click(function(){
    $(".Calendar").show();
    $(".Events").hide();
    $(".Task").hide();
    $(".Leaves").hide();
    $(".Profile").hide();
  });
  $(".tasknav").click(function(){
    $(".Calendar").hide();
    $(".Events").hide();
    $(".Task").show();
    $(".Leaves").hide();
    $(".Profile").hide();
  });
  $(".leavesnav").click(function(){
    $(".Calendar").hide();
    $(".Events").hide();
    $(".Task").hide();
    $(".Leaves").show();
    $(".Profile").hide();

  });
  $(".eventsnav").click(function(){
    $(".Calendar").hide();
    $(".Events").show();
    $(".Task").hide();
    $(".Leaves").hide();
    $(".Profile").hide();
  });
     $(".profilenav").click(function(){
        $(".Calendar").hide();
        $(".Events").hide();
        $(".Task").hide();
        $(".Leaves").hide();
        $(".Profile").show();
      });

});



</script>

<script>
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
                      					$('#list-employee').css({'color':'white', 'padding':'20px 20px 5px 30px'});
$('#employeeTableRow').css({ 'color':'white', 'padding':'20px','margin':'20px'});



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






</script>
<script>
$(document).ready(function(){


             $.ajax({
                    type : 'GET',
                    url : '${pageContext.request.contextPath}/EmployeeController/employeeProfile',
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
                      						var employee = "<li><font size='5px'>" + employee.firstname +" "+employee.surname+
                      						"</font></li><li> Employee Id :" + employee.employeeId +
                      						" " + employee.surname +
                                  "<li> Email  :" + employee.email +
                      						"</li><li> Designation :" + employee.designation +"</li>";

                      						$('#profileEmployee #profile-employee').append('<ul id="employeeProfileTableRow">' + employee + '</ul>');
                      			        });



$.each(data, function(i, employee){
                      						var employee =
                      						"<td><b><font size='4px' color='#f2B134'>" + employee.firstname +
                      						 " "+employee.surname +
                      						"</b></font><br><font size='2px' color='#ffffff'> " + employee.designation +"</font><br></td>";

                      						$('#team_members .team').append('<tr>' + employee + '<tr>');
                      			        });





                      					// just re-css for result-div
                      					$('#list-employee').css({'color':'white', 'padding':'20px 20px 5px 30px'});
$('#employeeTableRow').css({ 'color':'white', 'padding':'20px','margin':'20px'});



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






</script>

<script>
$(document).ready(function(){


             $.ajax({
                    type : 'GET',
                    url : '${pageContext.request.contextPath}/TaskController/userTasklist',
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
                      $.each(data, function(i, task){
                      						var task = "<td> " + task.task +

                      						"</td><td>" + task.spentHours +
                      						"</td><td>" + task.date +

                      						"</td><td> " + task.description +"</td>";

                      						$('#allTask #list-task').append('<tr id="taskTableRow">' + task+ '</td>');
                      			        });









                      					// just re-css for result-div
                      					$('#list-task').css({'color':'#111111', 'padding':'20px 20px 50px 30px'});
$('#taskTableRow').css({ 'color':'#111111', 'padding':'200px','margin':'200px'});



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


</script>
<script>
$(document).ready(function(){


             $.ajax({
                    type : 'GET',
                    url : '${pageContext.request.contextPath}/EventController/eventlist',
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
                      $.each(data, function(i, event){
                      						var events = "<td> " + event.title +
								"</td><td>" + event.date +
                      						"</td><td>" + event.description +

                                      "</td><td>" + event.employee.firstname +" "+event.employee.surname+
								"</td><td>" + event.startTime +
                      						"</td><td> " + event.endTime +"</td>";

                      						$('#allEvent #list-event').append('<tr id="eventTableRow">' + events + '</td>');
                      			        });



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






</script>
<script>
$(document).ready(function(){


             $.ajax({
                    type : 'GET',
                    url : '${pageContext.request.contextPath}/EventController/todayEventlist',
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

                      else{
                      $.each(data, function(i, event){
                      						var events = "<td> " + event.title +
								"</td><td>" + event.date +
                      						"</td><td>" + event.description +


								"</td><td>" + event.startTime +
                      						"</td><td> " + event.endTime +"</td>";

                      						$('#allTodayEvent #todaylist-event').append('<tr id="todayeventTableRow">' + events + '</td>');
                      			        });
                                    }


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






</script>



<script>
$(document).ready(function(){

  var date = new Date();
  var hour = date.getHours();
  var today = date.getDate();
  document.getElementById("today").innerHTML=today;

  var year = date.getFullYear();
  var day = date.getDay();
  if(day==1){document.getElementById("day").innerHTML="Monday";}
  else if(day==2){document.getElementById("day").innerHTML="Tuesday";}
  else if(day==3){document.getElementById("day").innerHTML="Wednesday";}
  else if(day==4){document.getElementById("day").innerHTML="Thursday";}
  else if(day==5){document.getElementById("day").innerHTML="Friday";}
  else if(day==6){document.getElementById("day").innerHTML="Saturday";}
  else if(day==7){document.getElementById("day").innerHTML="Sunday";}
  var month = date.getMonth();
  document.getElementById("year").innerHTML=year;


  if(month==0){document.getElementById("month").innerHTML="January";}
  else if(month==1){document.getElementById("month").innerHTML="February";}
  else if(month==2){document.getElementById("month").innerHTML="March";}
  else if(month==3){document.getElementById("month").innerHTML="Aprial";}
  else if(month==4){document.getElementById("month").innerHTML="May";}
  else if(month==5){document.getElementById("month").innerHTML="June";}
  else if(month==6){document.getElementById("month").innerHTML="July";}
  else if(month==7){document.getElementById("month").innerHTML="Auguest";}
  else if(month==8){document.getElementById("month").innerHTML="September";}
  else if(month==9){document.getElementById("month").innerHTML="October";}
  else if(month==10){document.getElementById("month").innerHTML="November";}
  else if(month==11){document.getElementById("month").innerHTML="December";}

var date2 = new Date('Decemeber 1,2018');
var day2=date2.getDay();

if(day2==1){document.getElementById("dateof1").innerHTML="Monday";}
else if(day2==2){document.getElementById("dateof1").innerHTML="Tuesday";}
else if(day2==3){document.getElementById("dateof1").innerHTML="Wednesday";}
else if(day2==4){document.getElementById("dateof1").innerHTML="Thursday";}
else if(day2==5){document.getElementById("dateof1").innerHTML="Friday";}
else if(day2==6){document.getElementById("dateof1").innerHTML="Saturday";}
else if(day2==7){document.getElementById("dateof1").innerHTML="Sunday";}
});

</script>
<script>
$(document).ready(function(){
$.ajax({
       type : 'GET',
       url : '${pageContext.request.contextPath}/EventController/eventlist',
       dataType : 'json',
       contentType : 'application/json',
       success : displayCalendar

   });


 });
function displayCalendar(response){

console.log(response);


 var htmlContent ="";
 var FebNumberOfDays ="";
 var counter = 1;


 var dateNow = new Date();
 var month = dateNow.getMonth();

 var nextMonth = month+1; //+1; //Used to match up the current month with the correct start date.
 var prevMonth = month -1;
 var day = dateNow.getDate();
 var year = dateNow.getFullYear();


 //Determing if February (28,or 29)
 if (month == 1){
    if ( (year%100!=0) && (year%4==0) || (year%400==0)){
      FebNumberOfDays = 29;
    }else{
      FebNumberOfDays = 28;
    }
 }


 // names of months and week days.
 var monthNames = ["January","February","March","April","May","June","July","August","September","October","November", "December"];
 var dayNames = ["Sunday","Monday","Tuesday","Wednesday","Thrusday","Friday", "Saturday"];
 var dayPerMonth = ["31", ""+FebNumberOfDays+"","31","30","31","30","31","31","30","31","30","31"]


 // days in previous month and next one , and day of week.
 var nextDate = new Date(nextMonth +' 1 ,'+year);
 var weekdays= nextDate.getDay();
 var weekdays2 = weekdays
Event
 var numOfDays = dayPerMonth[month];




 // this leave a white space for days of pervious month.
 while (weekdays>0){
    htmlContent += "<td class='monthPre'></td>";

 // used in next loop.
     weekdays--;
 }


 // loop to build the calander body.
 while (counter <= numOfDays){
  var details;
  var from;
  var to;
     // When to start new line.
    if (weekdays2 > 6){
        weekdays2 = 0;
        htmlContent += "</tr><tr>";
    }

    for(var i = 0; i < response.length; i++) {
        var obj = response[i];

        console.log(obj.title);
        console.log(counter);
        console.log(obj.date);
        var datearr = obj.date.split("-")
        console.log("year"+datearr[0]);
          console.log("month"+datearr[1]);
          console.log("date"+datearr[2]);
          console.log("counter"+counter);

          console.log("counter prase Int:"+parseInt(counter));
          if(parseInt(datearr[1])==parseInt(month+1) &&  parseInt(datearr[0])==parseInt(year) &&  parseInt(datearr[2])==parseInt(counter)){
              console.log("day prase Int:"+parseInt(datearr[2]));
            details=obj.title;

            console.log("match")
            break;

          }
          else{
            details="";
            from = " ";
            to = " ";
          }

    }

    // if counter is current day.
    // highlight current day using the CSS defined in header.
    if (counter == day){

        htmlContent +="<td class='dayNow'  onMouseOver='this.style.background=\"#f2B134\"; this.style.color=\"#FFFFFF\"' "+
        "onMouseOut='this.style.background=\"#FFFFFF\"; this.style.color=\"#f2B134\"'>"+counter+"<br><font color='#FF8800' size='4px'>"+details+"</font><br></td>";

    }else{

        htmlContent +="<td class='monthNow' onMouseOver='this.style.background=\"#f2B234\"'"+
        " onMouseOut='this.style.background=\"#FFFFFF\"'>"+counter+"<br><font color='#FF8800' size='4px'>"+details+"</font></td>";




    }

    weekdays2++;
    counter++;
 }



 // building the calendar html body.
 var calendarBody = "<table class='calendar'> <tr class='monthNow'></tr>";
 calendarBody +="<tr class='dayNames'>  <td>Sun</td>  <td>Mon</td> <td>Tues</td>"+
 "<td>Wed</td> <td>Thurs</td> <td>Fri</td> <td>Sat</td> </tr><br>";
 calendarBody += "<tr>";
 calendarBody += htmlContent;
 calendarBody += "</tr></table>";
 // set the content of div .
 document.getElementById("calendar").innerHTML=calendarBody;

}
</script>
</head>

<body onload="displayCalendar()">

  <div class="sidenav">


<a class ="logo" style="background:#202335;height:80px"><br><img src = '<c:url value="http://localhost:8080/dtms_web/resources/images/BeyondM-2016-final.svg"/>' width="100px" style="margin-left:70px"></img></a>
    <a href="#Calendar" id = "navcontent" class="calendarnav"><span class="glyphicon glyphicon-calendar" style="padding-left:10px"></span> <font style="padding-left:10px">Calendar</font></a>
    <a href="#Profile" id = "navcontent" class="profilenav"><span class="glyphicon glyphicon-user" style="padding-left:10px"></span> <font style="padding-left:10px">Profile</font></a>
    <a href="#Task" id = "navcontent" class="tasknav"> <span class="glyphicon glyphicon-flag" style="padding-left:10px"></span> <font style="padding-left:10px">Task</font></a>
    <a href="#Leaves" id = "navcontent" class="leavesnav"><span class="glyphicon glyphicon-plane" style="padding-left:10px"></span> <font style="padding-left:10px">Leaves</font></a>
    <a href="#Events" id = "navcontent" class="eventsnav"><span class="glyphicon glyphicon-user" style="padding-left:10px"></span> <font style="padding-left:10px">Events</font></a>

    <hr width=90% style="border-color:#4C4C54"></hr>
    <font size=4px color="#ffffff" style="padding-left:30px">TEAM MEMBERS</font><br><br>
    <div class="team_members" id="team_members">
    <table class="team" id="team">

</table>

<br>


</div><br><br>



  </div>




<div class="container-lg" id="maincontent">

<div class="row" id="navtop">

<div class="col-md-7" >
  <br>
<font size="6px" style="padding-left:30px"><b> Daily Task Management System</b></font>
</div>
<div class="col-md-3" >
<table><tr><td><img src = '<c:url value="/resources/images/profile.jpg"/>' width="60px" style=" margin-bottom:10px;margin-top:10px;margin-left:30px;margin-right:10px;border-radius:50%"></td><td><b><font size="4px">Lahiru Rathnayake</font></b><br><font size="2px">Software Engineer(intern)</font></td>
<td>Short Leaves        <label class="switch">
<input type="checkbox" checked>
<span class="slider round"></span>
</label></td>

<td>
          <div class="dropdown">  <button class="dropbtn"><span class="glyphicon glyphicon-option-vertical" id="icon"></span></button>
              <div class="dropdown-content">
                <a href="#"><span class="glyphicon glyphicon-cog"></span> Settings</a>


                <a href="dtms_web/EmployeeController/logout"><span class="glyphicon glyphicon-log-out"></span> Logout</a>
              </div>


          </div> </td></tr></table>

</div>

<br>
</div>







<div class="Calendar" >

<div class="row">


  <br>
<div class="col-md-11" id="content">
<font size="5px"><b> Calendar </b></font>
<hr></hr>

<div class="col-md-4">

<div class="panel panel-info" style="width:300px;height:300px;margin:20px;padding:0px">
     <div class="panel-heading"><center><b>   <font size="10px" style="color:#7f7f7f" id="year"></font><br><font size="5px" style="color:#7f7f7f" id="month"><b></font></center></div>
     <div class="panel-body"><center><b>
       <font size="5px" style="color:#7f7f7f" id="day"></font><br><br><font size="50px" style="color:#7f7f7f" id="today"></b></font><br>

  <br>

  </center></div>
   </div>
</div>
<div class="col-md-8"> <font size="30px" style="color:#7f7f7f" ></font><br><font size="10px" style="color:#111111" >Welcome To Daily Task Management System.</font></div>


<br><br><br><br><br>
<div class="col-md-12" id="calendar"></div>


</div>




</div>
</div>















<!--Tasks-->
<div class="Task" >



<div class="row">


  <br>
<div class="col-md-11" id="content">
<font size="5px"><b>Daily Tasks: </b></font>
<hr></hr>
<script>
$(document).ready(function(){
    $("#addNewTask").show();
    $("#viewPastTasks").hide();

  $("#newTask").click(function(){
    $("#addNewTask").show();
    $("#viewPastTasks").hide();
  });
  $("#pastTasks").click(function(){
    $("#addNewTask").hide();
    $("#viewPastTasks").show();
  });

});



</script>
<div class="tab">
  <button class="tablinks" id="newTask">Add New Task</button>
  <button class="tablinks" id="pastTasks">My History</button>

</div>
<div class="row" id="addNewTask">
  <br>
<div class="col-md-12" >

  <form class="form-inline" style="margin:50px 50px 50px 50px;width:80%" id="taskForm">
    <div class="form-group" style="width:100%">
    <font size="4px"><b>Add your daily status here:</b></font>
       <hr width="100%" color="black"></hr>
    <font size="3px">Task:</font><br>
      <input type="text" class="form-control" id="task" style="width:80%" required/>
    </div>
<br><br>
    <div class="form-group" style="width:100%">
      <font size="3px">Spent Hours:</font><br>
      <input type="text" class="form-control" id="spenthours" style="width:80%" required/>
    </div>
<br><br>
    <div class="form-group" style="width:100%">
          <font size="3px">Description</font><br>
          <textarea type="text" class="form-control" id="description" style="width:80%;height:100px" required/></textarea>
        </div>
<br><br>
    <button type="submit" class="btn btn-default" style="margin-left:20px; margin-right:5px;background:#fca402">Submit</button>
  </form>
<br><br>
<div id="getResultTask" ><b></b>
</div>


</div>
<p id="taskList"></p>

</div>

<div class="row" id="viewPastTasks">
<div class="col-md-12">
  <br>
<font size="4px" style="padding-left:20px"><b>View your history:</b></font>
     <hr width="100%" color="black"></hr>
     <div id="allTask">
     	        <table class="table table-bordered" id="list-task" style="background:#ffffff;width:100%;padding:20px">

     	        <tr class="bg-info">
     	            <th>Task</th>
     	            <th>Spent Hours</th>
     	            <th>Date</th>
                   <th>description</th><tr>


     	    	</table>
         	</div>
</div>


</div>
</div>


</div>


</div>



<div class="Leaves">

<div class="row">


  <br>
<div class="col-md-11" id="content">
<font size="5px"><b>Leaves: </b></font>
<hr></hr>
<script>
$(document).ready(function(){
    $("#addNewLeave").show();
    $("#viewPastLeaves").hide();

  $("#newLeave").click(function(){
    $("#addNewLeave").show();
    $("#viewPastLeaves").hide();
  });
  $("#pastLeaves").click(function(){
    $("#addNewLeave").hide();
    $("#viewPastLeaves").show();
  });

});



</script>
<div class="tab">
  <button class="tablinks" id="newLeave">Apply for leave</button>
  <button class="tablinks" id="pastLeaves">Leave Details</button>

</div>
<div class="row" id="addNewLeave">
  <br>
<div class="col-md-12" >

  <form class="form-inline" style="margin:50px 50px 50px 50px;width:80%" id="taskForm">
    <div class="form-group" style="width:100%">
    <font size="4px"><b>Apply for a leave here:</b></font>
       <hr width="100%" color="black"></hr>
    <font size="3px">Date leave on:</font><br>
      <input type="date" class="form-control" id="task" style="width:80%" required/>
    </div>
<br><br>
    <div class="form-group" style="width:100%">
      <font size="3px">Leaving Type:</font><br>
      <select class="form-control">
    <option>Full Day</option>
      <option>Half Day</option>
  </select>
    </div>
    <br><br>
        <div class="form-group" style="width:100%">
              <font size="3px">Leave time:</font><br>
              <input type="time" class="form-control" id="leaveTime" style="width:80%;" required/></imput>
            </div>

<br><br>
  <div class="form-group" style="width:100%">
        <font size="3px">Return time:</font><br>
        <input type="time" class="form-control" id="returnTime" style="width:80%;" required/></imput>
      </div>

<br><br>
    <div class="form-group" style="width:100%">
          <font size="3px">Reason:</font><br>
          <textarea type="text" class="form-control" id="reason" style="width:80%;height:100px" required/></textarea>
        </div>
<br><br>
    <button type="submit" class="btn btn-default" style="margin-left:20px; margin-right:5px;background:#fca402">Submit</button>
  </form>
<br><br>
<div id="getResultTask" ><b></b>
</div>


</div>
<p id="taskList"></p>

</div>

<div class="row" id="viewPastLeaves">
<div class="col-md-12">
  <br>
<font size="4px" style="padding-left:20px"><b>View your history:</b></font>
     <hr width="100%" color="black"></hr>
     <div id="allTask">
     	        <table class="table table-bordered" id="list-task" style="background:#ffffff;width:100%;padding:20px">

     	        <tr class="bg-info">
     	            <th>Task</th>
     	            <th>Spent Hours</th>
     	            <th>Date</th>
                   <th>description</th><tr>


     	    	</table>
         	</div>
</div>


</div>
</div>



</div>
</div>
<div class="Profile">

<div class="row">


  <br>
<div class="col-md-11" id="content">
<font size="5px"><b>Profile: </b></font>
<hr></hr>



          <script>
          $(document).ready(function(){
              $("#myProfile").show();
              $("#updateProfile").hide();

            $("#viewProfile").click(function(){
              $("#myProfile").show();
              $("#updateProfile").hide();
            });
            $("#update").click(function(){
              $("#myProfile").hide();
              $("#updateProfile").show();
            });

          });



          </script>
          <div class="tab">
            <button class="tablinks" id="viewProfile">My Profile</button>
            <button class="tablinks" id="update">Update Profile</button>

          </div>
          <div class="row" id="updateProfile">
            <br>
          <div class="col-md-12" >

            <form class="form-inline" style="margin:50px 50px 50px 50px;width:80%" id="profileForm">
              <div class="form-group" style="width:100%">
              <font size="4px"><b>Update your profile details:</b></font>
                 <hr width="100%" color="black"></hr>
              <font size="3px">Firstname:</font><br>
                <input type="text" class="form-control" id="firstname-p" style="width:80%" required/>
              </div>
          <br><br>
              <div class="form-group" style="width:100%">
                <font size="3px">Surname</font><br>
                <input type="text" class="form-control" id="surname-p" style="width:80%" required/>
              </div>
          <br><br>
            <div class="form-group" style="width:100%">
              <font size="3px">Designation</font><br>
              <input type="text" class="form-control" id="designation-p" style="width:80%" required/>
            </div>
          <br><br>
            <div class="form-group" style="width:100%">
              <font size="3px">Profile Picure:</font><br>
              <input type="file" class="form-control" name ="image" id="image-p" style="width:80%" required></input>
            </div>
          <br><br>
              <button type="submit" class="btn btn-default" style="margin-left:20px; margin-right:5px;background:#fca402">Submit</button>
            </form>
          <br><br>
          <div id="getResultUpdate" ><b></b>
          </div>


          </div>


          </div>

          <div class="row" id="myProfile">
          <div class="col-md-12">
            <br>

               <hr width="100%" color="black"></hr>
               <div id="profileEmployee">
                    	        <table class="table table-bordered" id="profile-employee" style="background:#ffffff;width:100%;padding:20px">




                    	    	</table>
                        	</div>
          </div>


          </div>
</div>



</div>
</div>




<div class="Events">

<div class="row">


  <br>
<div class="col-md-11" id="content">
<font size="5px"><b>Events:</b></font>
<hr></hr>

<script>
$(document).ready(function(){

    $("#viewPastEvents").hide();
    $("#viewTodayEvents").show();


  $("#pastEvents").click(function(){

    $("#viewPastEvents").show();
    $("#viewTodayEvents").hide();
  });
   $("#todayEvents").click(function(){

      $("#viewPastEvents").hide();
      $("#viewTodayEvents").show();
    });

});



</script>
<div class="tab">

   <button class="tablinks" id="todayEvents">Today Events</button>
  <button class="tablinks" id="pastEvents">Past Events</button>


</div>

<div class="row" id="viewPastEvents">
<div class="col-md-12">
<br>
  <font size="4px"><b>Past Events</b></font>
     <hr width="100%" color="black"></hr>
     <div id="allEvent">
     	        <table class="table table-bordered" id="list-event" style="background:#ffffff;width:100%;padding:20px">

     	        <tr class="bg-info"><th>Event</th>
     	            <th>Date</th>
     	            <th>info</th>
                  <th>Update By</th>
                   <th>Start Time</th>
                   <th>End Time</th><tr>


     	    	</table>
         	</div>
</div>


</div>
<div class="row" id="viewTodayEvents">
<div class="col-md-12">
<br>
  <font size="4px"><b>Today Events</b></font>
     <hr width="100%" color="black"></hr>
     <div id="allTodayEvent">
     	        <table class="table table-bordered" id="todaylist-event" style="background:#ffffff;width:100%;padding:20px">

     	        <tr class="bg-info"><th>Event</th>
     	            <th>Date</th>
     	            <th>info</th>
                      <th>Update By</th>
                   <th>Start Time</th>
                   <th>End Time</th><tr>


     	    	</table>
         	</div>
</div>


</div>
  </div>
</div>


</div>
</div>
</div>

<div class="container">
<div style="display:none;" class="row" id="pop-outer">
  <div class="col-md-4"></div>
  <div class="col-md-4" id="pop-inner">
    <button class="close">close</button>

    <div class="container">



  	<div class="from-group">
  		<form class="form-inline" style="margin:20px 20px 20px 20px" id="employeeForm">
  			<div class="form-group">
				<font size="4px"><b>Add New Employee</b></font>
  				 <hr width="100%" color="black"></hr>
				<font size="3px">Employee Firstname:</font><br>
  				<input type="text" class="form-control" id="firstname"  required/>
  			</div>
<br><br>
  			<div class="form-group">
  				<font size="3px">Employee Surname:</font><br>
  				<input type="text" class="form-control" id="surname" required/>
  			</div>
<br><br>
<div class="form-group">
  				<font size="3px">Employee Designation:</font><br>
  				<input type="text" class="form-control" id="designation" required />
  			</div>
<br><br>
<div class="form-group">
  				<font size="3px">Employee Email:</font><br>
  				<input type="text" class="form-control" id="email" required/>
  			</div>
<br><br>
  			<button type="submit" class="btn btn-default" style="margin-left:20px; margin-right:5px;background:#fca402">Submit</button>
  		</form>
<br><br>
<div id="getResultDiv" ><b></b>
  	</div>



  	<div class="col-sm-12" style="margin:20px 0px 20px 0px">


  	        <ul class="list-group">
  	    	</ul>
      	</div>
  	</div>

  </div>
  </div>
</div>
</div>
<script type="text/javascript">
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
</script>


<script type="text/javascript">
$( document ).ready(function() {

	// SUBMIT FORM
    $("#taskForm").submit(function(event) {
		// Prevent the form from submitting via the browser.
		event.preventDefault();
		ajaxPost();
	});


    function ajaxPost(){

    	// PREPARE FORM DATA
    	var formData = {
    		task : $("#task").val(),
    		spenthours :  $("#spenthours").val(),
		description :  $("#description").val()
    	}

    	// DO POST
    	$.ajax({
			type : "POST",
			contentType : "application/json",
			url : '${pageContext.request.contextPath}/TaskController/addNewTask',
			data : JSON.stringify(formData),
			success : function(result) {

				console.log(result);
				document.getElementById("getResultTask").innerHTML = result;
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
    	$("#task").val("");
    	$("#spenthours").val("");
    	$("#description").val("");

    }
})
</script>


<script type="text/javascript">
$( document ).ready(function() {

	// SUBMIT FORM
    $("#profileForm").submit(function(event) {
		// Prevent the form from submitting via the browser.
		event.preventDefault();
		ajaxPost();
	});


    function ajaxPost(){

    	// PREPARE FORM DATA
    	var formData = {
    		firstname : $("#firstname-p").val(),
    		surname :  $("#surname-p").val(),
		designation :  $("#designation-p").val(),
		image :  $("#image-p").val()
    	}

    	// DO POST
    	$.ajax({
			type : "POST",
			contentType : "application/json",
			url : '${pageContext.request.contextPath}/EmployeeController/updateEmployee',
			data : JSON.stringify(formData),
			success : function(result) {

				console.log(result);
				document.getElementById("getResultUpdate").innerHTML = result;
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
    	$("#firstname-p").val("");
    	$("#surname-p").val("");
    	$("#designation-p").val("");
    	$("#email-p").val("");
    }
})
</script>

</body>
</html>
