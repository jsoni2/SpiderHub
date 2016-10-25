<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add User In Project</title>
</head>
<body>
<h1>Add User In Project</h1>
<form:form modelAttribute = "project">
<table border = '1'>
<tr>
<th></th><th>Users</th>
</tr>
<tr>
<c:forEach items="${users}" var="user">
<td><form:checkbox path = "usersRelatedProject"  value = "${user.id}" /></td>
<td>${user.userName}</td>
</c:forEach>
</tr>
</table>
<input type="submit" name = "add" value = "Add" />
</form:form>
</body>
</html>