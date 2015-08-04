<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add a Offer</title>
<link href="${pageContext.request.contextPath}/static/css/stylesheet.css" type="text/css" rel="stylesheet">
</head>
<body>
	<form:form method="post"
		action="${pageContext.request.contextPath}/doCreate" commandName="offer">
		<table class="formTable">
			<tr>
				<td><label>Name</label></td>
				<td><form:input type="text" name="name" path="name"/><br/><form:errors path="name" cssClass="error"></form:errors></td>
			</tr>
			<tr>
				<td><label>Email</label></td>
				<td><form:input type="text" name="email" path="email"/><br/><form:errors path="email" cssClass="error"></form:errors></td>
			</tr>
			<tr>
				<td><label>Text</label></td>
				<td><form:textarea rows="10" name="text" path="text"></form:textarea><br/><form:errors path="text" cssClass="error"></form:errors></td>
			</tr>
			<tr>
				<td></td>
				<td><form:button type="submit">Submit</form:button></td>
			</tr>
		</table>
	</form:form>
</body>
</html>