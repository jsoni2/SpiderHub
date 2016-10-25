<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Assign</title>
</head>
<body>
<h1>Assign</h1>
<form:form modelAttribute = "task">
<table border = '1'>
<tr>
<th></th><th>Users</th>
</tr>
<tr>
<c:forEach items="${users}" var="user">
<td><form:radiobutton path = "userTasks"  value = "${user}" /></td>
<td>${user.userName}</td>
<td>${user.id}</td>
</c:forEach>
</tr>
</table>
<input type="submit" name = "add" value = "Add" />
</form:form>
</body>
</html>