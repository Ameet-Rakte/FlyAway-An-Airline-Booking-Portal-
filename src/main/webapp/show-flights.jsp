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
<table border="1" cellpadding="30%" bgcolor="white">
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
	
</table>
<br><br>
<h4 style="color:red">Please enter the flight you want to delete</h4>
<form action="Delete" method="post">
<table >
	    <tr>
	    <td><label for=flightnos>Flight Number</label><br></td>
	    <td><input type="number" name="flightnos"></td>
	    </tr>
	    <tr>
	    <td><input type=submit name="delete" value="Delete flight" style="color:red" /></td>
	    <td><input type=reset value=cancle style="color:red" /></td>
	    </tr>
    </table>

</form>
<h3><a href="1.html" style="color:red">Back</a></h3>
</body>
</html>