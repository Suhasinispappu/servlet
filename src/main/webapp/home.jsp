<%@page import="dto.TodoTask"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
</head>
<body>
	<%
	List<TodoTask> tasks = (List<TodoTask>) request.getAttribute("tasks");
	%>
	<h1 align="center">This is Home Page</h1>
	<%
	if(!tasks.isEmpty()){
	%>
	<div>
	<table border="1px">
		<tr>
			<td>Task Name</td>
			<td>Task Description</td>
			<td>Created Time</td>
			<td>Status</td>
			<td>Delete</td>
			<td>Edit</td>
		</tr>
		<%
		for(TodoTask task : tasks){
		%>
		<tr>
			<td><%=task.getName()%></td>
			<td><%=task.getDescription()%></td>
			<td ><%=task.getCreatedTime()%></td>
			<%
			if (task.isStatus()) {
			%><td style="color: green">Complete</td>
			<%
			} else {
			%>
			<td><a href="complete?id=<%=task.getId()%>"><button>Complete</button></a></td>
			<%
			}
			%>
			<td><a href="edit-task.jsp?id=<%=task.getId()%>&name=<%=task.getName()%>&desp=<%=task.getDescription()%>"><button>Edit</button></td></a>
			<td><a href="delete?id=<%=task.getId()%>"><button>Delete</button></a></td>
		</tr>
		<%} %>
	</table>
	</div>
   <%} %>
	<a href="add-task.html"><button>Add Task</button></a>
	<a href="logout"><button class=b1>Logout</button></a>
</body>
</html>