<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>product</title>
<!-- Bootstrap core CSS -->
<link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="<c:url value="/resources/css/carousel.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="resources/css/font-awesome.min.css">
</head>
<body>
	<div class="row">
		<div class="col-md-6">
			<c:set var="imageFilename"
				value="/resources/images/${product.id}.jpg" />
			<img src="<c:url value="${imageFilename}" />" alt="image"
				style="width: 80%" />
			<div class="col-md-6">
			
				<h3>${product.name}</h3>
				<p>${product.description}</p>
				<p>${product.manufacturer}</p>
				<p>${product.category}</p>
				<h5>${product.price}</h5>
			</div>
		</div>
</body>
</html>