<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset = UTF-8"
	pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>e-Store</title>

<!-- Bootstrap core CSS -->
<link href="<c:url value="/resources/css/bootstrap.min.css"/>"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="<c:url value="/resources/css/carousel.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="resources/css/font-awesome.min.css">
</head>
<body>

	<!--상단 메뉴 바 -->
	<header>
		<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
			<a class="navbar-brand" href="#">Carousel</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarCollapse" aria-controls="navbarCollapse"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarCollapse">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item active"><a class="nav-link" href="#">Home
							<span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Link</a></li>
					<li class="nav-item"><a class="nav-link disabled" href="#">Disabled</a>
					</li>
				</ul>
				<form class="form-inline mt-2 mt-md-0">
					<input class="form-control mr-sm-2" type="text"
						placeholder="Search" aria-label="Search">
					<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
				</form>
			</div>
		</nav>
	</header>

	<div class="container-wrapper">
		<div class="container">
			<h2>All Products</h2>
			<p>국내 최저가!</p>
			<table class="table table-striped">
				<thead>
					<tr>
						<th>Name</th>
						<th>Category</th>
						<th>Price</th>
						<th>Manufacturer</th>
						<th>Unit In Stock</th>
						<th>Description</th>
						<th>Information </th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="product" items="${products }">
						<tr>
							<td>${product.name }</td>
							<td>${product.category }</td>
							<td>${product.price }</td>
							<td>${product.manufacturer }</td>
							<td>${product.unitInStock }</td>
							<td>${product.description }</td>
							<td><a href="<c:url value="/viewProduct/${product.id}" />">
									<i class="fa fa-info-circle"></i>
							</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>

	</div>
	<!-- FOOTER -->
	<footer class="container">
		<p class="float-right">
			<a href="#">Back to top</a>
		</p>
		<p>
			&copy; 2017-2018 Company, Inc. &middot; <a href="#">Privacy</a>
			&middot; <a href="#">Terms</a>
		</p>
	</footer>
	</main>

	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>

	<script>
		window.jQuery
				|| document
						.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')
	</script>
	<script src="../../assets/js/vendor/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>
