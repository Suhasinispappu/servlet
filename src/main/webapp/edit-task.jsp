<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Task</title>
</head>
<body>
<h1>Edit task</h1>
	<form action="edit-task">
		<label>Task Name:</label> <br> <input type="text" name=tname
			value=<%=request.getParameter("name")%>><br> <br> <label>
			Description:</label> <br> <input type="text" name=tdesp
			value=<%=request.getParameter("desp")%>> <br> <br>
		<input type=hidden name=id value=<%=request.getParameter("id")%>>
		<button>Edit</button>
	</form>
</body>
</html>