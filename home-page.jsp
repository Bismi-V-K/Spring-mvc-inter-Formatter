<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Page</title>
<hr>
</head>
<body>
	<div align="center">
		<h1>Registration Page</h1>
		<form:form action="processing" modelAttribute="RegPage" method="get">
			<label for="nam">Name:</label>
			<form:input path="name" id="nam" />
			<br/>
			<label for="pas">Password:</label>
			<form:password path="password" id="pas"/>
			<br/>
			<label>Country:</label>
			<form:select path="countryname">
				<form:option value="ind" label="india"></form:option>
				<form:option value="chin" label="china"></form:option>
				<form:option value="pak" label="Pakistan"></form:option>
			</form:select>
			<br/>
			<input type="submit" value="Register!">
			<h2>Communication:</h2>
			<label for="em">Email:</label>
			<form:input path="comdto.email" id="em"/>
			<label>PhoneNumber: </label>
			<form:input path="comdto.phone"/>
			
		</form:form>
	</div>
</body>
</html>