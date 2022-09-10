<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.notgabs.utils.SortUtil" %>
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
					<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/customer/list">Customer
							list</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="container mt-4 mb-4">
		<h2>All customers</h2>
		<a href="${pageContext.request.contextPath}/customer/add" class="text-decoration-none">
			<button type="button" class="btn btn-success mt-2 mb-2">+
				Add</button>
		</a>
		<table class="table table-hover">
			<thead>
				<c:url var="searchFirstNameUrl" value="/customer/list">
					<c:param name="sort" value="<%= Integer.toString(SortUtil.FIRST_NAME) %>"/>
				</c:url>
				<c:url var="searchLastNameUrl" value="/customer/list">
					<c:param name="sort" value="<%= Integer.toString(SortUtil.LAST_NAME) %>"/>
				</c:url>
				<c:url var="searchEmailUrl" value="/customer/list">
					<c:param name="sort" value="<%= Integer.toString(SortUtil.EMAIL) %>"/>
				</c:url>
				<tr>
					<th scope="col">#</th>
					<th scope="col"><a href="${ searchFirstNameUrl }">First Name</a></th>
					<th scope="col"><a href="${ searchLastNameUrl }">Last Name</a></th>
					<th scope="col"><a href="${ searchEmailUrl }">Email</a></th>
					<th scope="col">Actions</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${ customers }" var="customer">

					<c:url var="updateLink" value="/customer/${customer.id}/edit" />
					<c:url var="deleteLink" value="/customer/${customer.id}/delete" />

					<tr class="table-dark">
						<th scope="row">${ customer.id }</th>
						<td>${ customer.firstName }</td>
						<td>${ customer.lastName }</td>
						<td>${ customer.email }</td>
						<td>
							<div class="row">
								<div class="col-6">
									<a href="${updateLink}">
										<button type="button" class="btn btn-primary">Update</button>
									</a>
								</div>
								<div class="col-6">
									<a href="${deleteLink}" onclick="return confirm('Are you sure you want to delete this customer ?');">
										<button type="button" class="btn btn-danger">Delete</button>
									</a>
								</div>
							</div>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
</body>
</html>