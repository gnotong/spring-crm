<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<nav class="navbar navbar-light bg-light">
		<span class="navbar-brand mb-0 h1">Navbar</span>
	</nav>

	<div id="container">
		<div id="content">
			<table class="table">
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
					<tr>
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
</body>
</html>