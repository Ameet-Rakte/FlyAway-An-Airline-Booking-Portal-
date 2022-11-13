<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Flights List</title>
</head>
<body>
<h1 style="color:blue">FlyAway (An Airline Booking Portal)!! </h1>
<h4 style="color:purple" align="right">Developer : Amit Rakte</h4><br><br><br>
<h2 style="color:green">Available Flights</h2>
<table border="1" cellpadding="30%">
<tr>
<th>FlightNumber</th>
<th>Source</th>
<th>Destination</th>
<th>Time</th>
<th>Duration</th>
<th>Price</th>
</tr>
	<c:forEach var="items" items="${flightlist}">
	<tr>
	<td>${items.flightNumber}</td>
	<td>${items.source}</td>
	<td>${items.destination}</td>
	<td>${items.time}</td>
	<td>${items.duration}</td>
	<td>${items.price}</td>
	</tr>
	</c:forEach>
	
</table><br><br>
<div style="border:2px solid green;width:25%;border-radius:20px;padding:20px" align="center">
<form action="Payment" method="post" align="center">
<table >
    <tr>
    <td><label for=name>Name</label><br></td>
    <td><input type="text" name="name"></td>
    </tr>
    <tr>
    <td><label for=phone>Phone</label><br></td>
    <td><input type="number" name="phone"></td>
    </tr>
    <tr>
    <td><label for=flight>Flight Number</label><br></td>
    <td><input type="number" name="flight"></td>
    </tr>
    <tr>
    <td><input type=submit value="Proceed to Payment" style="color:green" /></td>
    <td><input type=reset style="color:red" /></td>
    </tr>
 </table>

</form>
<p style="color:red">Please Provide Correct Flight Number to avoid further Discrepancies</p><br>
</div>
<h4 style="color:purple"><a href="index.html">Back</a></h4>

</body>
</html>