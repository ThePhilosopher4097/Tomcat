<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ 
	page session="true"
%>

<html>
<head>
	<link rel="stylesheet" href="css/header.css">
	<link rel="stylesheet" href="css/function_1.css">
	<link rel="stylesheet" href="css/function_2.css">
	<link rel="stylesheet" href="css/function_3.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
	body {
		margin: 0;
		padding: 0;
	}
	.header {
		width: 100%;
		height: 600px;
		background: url("Images/index_img_1.jpg") no-repeat 50% 50%;
		background-size: cover;
		margin-top: 80px;
		z-index : 20;
		padding-top: 5%;
	  }
	.flyer {
		padding: 20px;
		color: #fff;
		width: 400px;
		background: rgba( 0, 0, 0, 0.55 );
		box-shadow: 0 8px 32px 0 rgba( 31, 38, 135, 0.37 );
		backdrop-filter: blur( 4px );
		-webkit-backdrop-filter: blur( 4px );
		border-radius: 10px;
		border: 1px solid rgba( 255, 255, 255, 0.18 );

		border-color: palevioletred;
		z-index: 19;
	}
	p {
		padding: 20px;
		font-size: 18px;
		text-align: justify;
	}
	.box {
		background: #eceeee;
		border: 1px solid #42464b;
		border-radius: 6px;
		width: 300px;
	  }
	

</style>
</head>

<div class="navbar" id="navbar">
	
	<a href="/MIT/"><div class="logo"></div></a>
	<div class="topnav" id="myTopnav">
		<a href="#p">Servlet Interface</a>
		<a href="#shadow1">Generic Servlet</a>
		<a href="#shadow2">Http Servlet</a>
		<a href="jsp/Jsp_Demo.jsp">JSP demo</a>
		<a href="#cookies">Cookies demo</a>
		<a href="#session">Session Demo</a>
		<a href="jsp/JSTL.jsp">JSTL Demo</a>
		<a href="javascript:void(0);" class="icon" onclick="myFunction()">
		  <i class="fa fa-bars"></i>
		</a>
	  </div>

</div>

<div class="header">
	<center>
		<div class="flyer" id="flyer">
			<h1>Name: Sameer Manik Patil</h1><br><hr><br>
			<h2>PRN: 0220200017<br><br>
			Roll no: 243<br><br>
			Batch: AJ-5<br><br>
			Div: D (D3)</h2>
		</div>
	</center>
</div>


<p id="p">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p>


<hr>
<br>
<center>
<h1>Factorial of Number</h1>
</center>
<div class="function_1" style="height:170px" id="factorial">
	<form action="Servlet_1">
		<input type="text" placeholder="Enter any positive integer" id="n1" name="n1">  
		<input type="submit" name="submit" id="submit" value="Find Factorial">
	</form>
</div>
<div class="shadow" id="shadow1"></div>


<hr>
<br>
<center>
<h1>Permutations and Combinations (nCr & nPr)</h1>
</center>
<div class="function_1" id="combination">
	<form action="Servlet_2">
		<input type="text" placeholder="Enter n value" id="n1" name="n1">
		<input type="text" placeholder="Enter r value" id="n2" name="n2">
		<input type="submit" name="submit" id="submit" value="Calculate">
	</form>
</div>
<div class="shadow" id="shadow2"></div>


<hr>
<br>
<center>
<h1>Addition</h1>
</center>
<div class="function_1" id="addition">
	<form action="Servlet_3">
		<input type="text" placeholder="Enter first number" id="n1" name="n1">  
		<input type="text" placeholder="Enter second number" id="n2" name="n2">  
		<input type="submit" name="submit" id="submit" value="Add">
		<br>
	</form>
</div>
<div class="shadow"></div>

<hr>
<br>
<center>
	<h1>Cookies Demo - Student Registration</h1>
</center>
<div class="function_3" id="cookies">
	<form action="jsp/CookiesDemo.jsp" method="post">
		<table>
		<tr>Name : <input type="text" placeholder="Enter Name : " id="name" name="name" required>  <br></tr>
		<tr>PRN : <input type="text" placeholder="Enter PRN : " id="prn" name="prn" required><br><br><br></tr>
		<tr>Gender : 
			<div style="margin-left:20%;margin-top:-16px">Male <input type="radio" value="Male" name="gender" id="male">
			Female <input type="radio" name="gender" id="female" value="Female"></div><br></tr>
		<tr>Address : <br><div style="margin-left:20%;margin-top:-16px"><textarea cols="20" rows="4" name="address"></textarea></div></tr>
		<tr>Contact :<input type="text" placeholder="Enter mobile no" name="contact" id="contact"><br></tr>
		<tr>Email :<input type="text" placeholder="Enter email address" name="email" id="email"><br></tr>
		</table>
		<input type="submit" name="submit" id="submit" value="Submit">
		<br>
	</form>
</div>
<div class="shadow3"></div>

<hr>
<br>
<center>
<h1>JSP Session Tracking</h1>
</center>
<div class="function_1" id="session">
	<form action="jsp/Page_1.jsp">
		<input type="text" placeholder="Enter your fullname" id="name" name="name">
		<input type="text" placeholder="Enter 10 digit PRN" id="prn" name="prn">
		<input type="submit" name="submit" id="submit" value="Next">
	</form>
	<%
		String error = request.getParameter("status");
		String msg = request.getParameter("msg");
		if (msg==null)	{
			msg = ""; error = "";
		}

	%>
</div>
	<center><h2 style="color: red;"><%=error%><br><%=msg%></h2></center>
<div class="shadow"></div>



<!-- Jquery needed -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="js/scripts.js"></script>

<!-- Function used to shrink nav bar removing paddings and adding black background -->
<script>

	function myFunction() {
		var x = document.getElementById("myTopnav");
		if (x.className === "topnav") {
		  x.className += " responsive";
		} else {
		  x.className = "topnav";
		}
	  }

	$(window).scroll(function() {
		if ($(document).scrollTop() > 50) {
			$('.nav').addClass('affix');
			console.log("OK");
		} else {
			$('.nav').removeClass('affix');
		}
	});


	document.getElementById("btn").addEventListener("click", showMenu);
	function showMenu() {
	var menu = document.getElementById("menu");
	menu.classList.toggle("show");
	}

</script>
</html>