<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cutomer Relational Mapping</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">CRM</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarColor03"
				aria-controls="navbarColor03" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarColor03">
				<ul class="navbar-nav me-auto">
					<li class="nav-item"><a class="nav-link" href="list">Customer list</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="container mt-4 mb-4">
		<div id="content">
			<h2>All customers</h2>
			<button type="button" class="btn btn-dark mt-2 mb-2">
				<a href="add" class="text-decoration-none">
					+ Add
				</a>
			</button>
			<table class="table table-hover">
				<thead>
					<tr>
						<th scope="col">#</th>
						<th scope="col">First Name</th>
						<th scope="col">Last Name</th>
						<th scope="col">Email</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${ customers }" var="customer">
						<tr class="table-dark">
							<th scope="row">${ customer.id }</th>
							<td>${ customer.firstName }</td>
							<td>${ customer.lastName }</td>
							<td>${ customer.email }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
</body>
</html>