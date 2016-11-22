<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Assign</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/bootstrap.min.css" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/bootstrap-theme.min.css" />
<script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
</head>
<body
	style="background: url(<%=request.getContextPath()%>/images/rbg1.jpg) no-repeat center center fixed">
	<div class="container" style="margin-top: 20px;">
		<div class="row text-center pad-top ">
			<div class="col-md-12">
				<h2 style="color: white;">Assign Task to User</h2>
			</div>
		</div>
		<div class="row  pad-top">
			<div
				class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3 col-xs-10 col-xs-offset-1">
				<div class="panel panel-success">
					<div class="panel-heading">
						<strong> Users </strong>
					</div>
					<div class="panel-body">
						<!-- This is a SPRING_MVC Form -->
						<form:form modelAttribute="task" role="form">

							<p style="color: red; text-align: center;">${sessionScope.error}</p>
							<h4 class="text-info">Task Name:</h4>
							<div class="form-group">
								<div class="input-group">
									<div class="input-group-addon">
										
									</div>
									<table class="table table-hover">
										<tr>
											<th></th>
											<th>Users</th>
										</tr>
										<tr>
											<c:forEach items="${users}" var="user">
												<td><form:checkbox path="userTasks"
														value="${user.id}" /></td>
												<td>${user.userName}</td>
											</c:forEach>
										</tr>
									</table>
								</div>
							</div>


							<input class="btn btn-primary" type="submit" name="add"
								value="Add">
							<hr />


						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
