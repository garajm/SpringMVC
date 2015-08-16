<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add a Account</title>
<link href="${pageContext.request.contextPath}/static/css/stylesheet.css" type="text/css" rel="stylesheet">
</head>
<body>
	<form:form method="post"
		action="${pageContext.request.contextPath}/createAccount" commandName="user">
		<table class="formTable">
			<tr>
				<td><label>Username</label></td>
				<td><form:input type="text" name="username" path="username"/><br/><form:errors path="username" cssClass="error"></form:errors></td>
			</tr>
			<tr>
				<td><label>Email</label></td>
				<td><form:input type="text" name="email" path="email"/><br/><form:errors path="email" cssClass="error"></form:errors></td>
			</tr>
			<tr>
				<td><label>Password</label></td>
				<td><form:input type="text" name="password" path="password"/><br/><form:errors path="password" cssClass="error"></form:errors></td>
			</tr>
			<tr>
				<td><label>Confirm password</label></td>
				<td><input type="text" name="confirmPassword"/></td>
			</tr>
			<tr>
				<td></td>
				<td><form:button type="submit">Create Account</form:button></td>
			</tr>
		</table>
	</form:form>
</body>
</html>