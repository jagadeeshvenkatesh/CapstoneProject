<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
@import "http://fonts.googleapis.com/css?family=Roboto:300,400,500,700";

.container {
	margin-top: 20px;
}

.mb20 {
	margin-bottom: 20px;
}

hgroup {
	padding-left: 15px;
	border-bottom: 1px solid #ccc;
}

hgroup h1 {
	font: 500 normal 1.625em "Roboto", Arial, Verdana, sans-serif;
	color: #2a3644;
	margin-top: 0;
	line-height: 1.15;
}

hgroup h2.lead {
	font: normal normal 1.125em "Roboto", Arial, Verdana, sans-serif;
	color: #2a3644;
	margin: 0;
	padding-bottom: 10px;
}

.search-result .thumbnail {
	border-radius: 0 !important;
}

.search-result:first-child {
	margin-top: 0 !important;
}

.search-result {
	margin-top: 20px;
}

.search-result .col-md-2 {
	border-right: 1px dotted #ccc;
	min-height: 140px;
}

.search-result ul {
	padding-left: 0 !important;
	list-style: none;
}

.search-result ul li {
	font: 400 normal .85em "Roboto", Arial, Verdana, sans-serif;
	line-height: 30px;
}

.search-result ul li i {
	padding-right: 5px;
}

.search-result .col-md-7 {
	position: relative;
}

.search-result h3 {
	font: 500 normal 1.375em "Roboto", Arial, Verdana, sans-serif;
	margin-top: 0 !important;
	margin-bottom: 10px !important;
}

.search-result h3>a, .search-result i {
	color: #248dc1 !important;
}

.search-result p {
	font: normal normal 1.125em "Roboto", Arial, Verdana, sans-serif;
}

.search-result span.plus {
	position: absolute;
	right: 0;
	top: 126px;
}

.search-result span.plus a {
	background-color: #248dc1;
	padding: 5px 5px 3px 5px;
}

.search-result span.plus a:hover {
	background-color: #414141;
}

.search-result span.plus a i {
	color: #fff !important;
}

.search-result span.border {
	display: block;
	width: 97%;
	margin: 0 15px;
	border-bottom: 1px dotted #ccc;
}
</style>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Listing Results</title>
</head>
<body>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


	<div class="container">

		<hgroup class="mb20">
		<h1>Results</h1>
		<h2 class="lead">
			<strong class="text-danger">#</strong> results were found for the
			search for <strong class="text-danger">Result</strong>
		</h2>
		</hgroup>

		<section class="col-xs-12 col-sm-6 col-md-12"> <article
			class="search-result row">
		<div class="col-xs-12 col-sm-12 col-md-3">
			<a href="#" title="Lorem ipsum" class="thumbnail"><img
				src="<%=request.getContextPath()%>/resources/img/listings/custom_headphone.jpg"
				alt="Listing" /></a>
		</div>
		<div class="col-xs-12 col-sm-12 col-md-2">
			<ul class="meta-search">
				<li><i class="glyphicon glyphicon-user"></i> <span>User
						Name</span></li>
				<li><i class="glyphicon glyphicon-usd"></i> <span>Price
				</span></li>
				<li><i class="glyphicon glyphicon-map-marker"></i> <span>Location</span></li>
			</ul>
		</div>
		<div class="col-xs-12 col-sm-12 col-md-7 excerpet">
			<h3>
				<a href="#" title="">Name of Product</a>
			</h3>
			<p>Description</p>
			<span class="plus"><a href="#" title="Lorem ipsum"><i
					class="glyphicon glyphicon-plus"></i></a></span>
		</div>
		<span class="clearfix borda"></span> </article> </section>
	</div>


</body>
</html>

</html>