<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form method="get" action="${pageContext.request.contextPath}/doCreate">
		<table>
			<tr>
				<td><label>Name</label></td>
				<td><input type="text" name="name"/></td>
			</tr>
			<tr>
				<td><label>Email</label></td>
				<td><input type="text" name="email"/></td>
			</tr>
			<tr>
				<td><label>Text</label></td>
				<td><textarea name="text"></textarea></td>
			</tr>
			<tr>
				<td><button type="submit">Submit</button></td>
			</tr>
		</table>	
	</form>
</body>
</html>