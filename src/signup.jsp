<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Signup</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
    <form action="signup_Action.jsp" method="post">
    <input type="text" name="name" placeholder="Enter Your Name" required >
    <input type="text" name="email" placeholder="Enter Your Email" required >
    <input type="text" name="mobileNumber" placeholder="Enter Your Mobile Number" required >
    <select name="securityQuestion" required>
    <option value="What was your first car?">What was your first car?</option>
     <option value="What is the name of your first pet?">What is the name of your first pet?</option>
      <option value="What elementary school did your attend?">What elementary school did your attend?</option>
       <option value="What is the name of the town where you were born">What is the name of the town where you were born</option>
    </select> 
     <input type="text" name="answer" placeholder="Enter Your Answer" required >
     <input type="password" name="password" placeholder="Enter Your Password" required >
     <input type="text" name="address" placeholder="Enter Your Address" required >
     <input type="text" name="city" placeholder="Enter Your City" required >
     <input type="text" name="state" placeholder="Enter Your State" required >
     <input type="text" name="country" placeholder="Enter Your Country" required >
     
     <input type="submit" value=Signup>
    </form>
      <h2 ><a href="login.jsp"id="hi">Login</a></h2>
  </div>
  <div class='whysign'>
<%
String msg=request.getParameter("msg");
if("valid".equals(msg)){
	%>
	<h1>Successfully Updated</h1>
<%}%>
<%
if("invalid".equals(msg)){
	%>
	<h1>Your Id Password is not Matching....!!!!</h1>
<%}%>
    <h2>Online Shopping</h2>
    <p>The Online Shopping System is the application that allows the users to shop online without going to the shops to buy them.</p>
  </div>
</div>

</body>
</html>