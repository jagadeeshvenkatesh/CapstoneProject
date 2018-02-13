<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<spring:url value="resources/css/uikit.css" var="uikitCSS" />
<spring:url value="resources/js/uikit.js" var="uikitJS" />
<spring:url value="resources/js/jquery.js" var="jquery" />
<spring:url value="resources/js/uikit-icons.js" var="uikiticons" />
<link href="${uikitCSS}" rel="stylesheet" />
<script type="text/javascript" src="${uikitJS}"></script>
<script type="text/javascript" src="${jquery}"></script>
<script type="text/javascript" src="${uikiticons}"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Community</title>

</head>
<body>

<%@include file="jspf/header.jsp"%>
<body>

	<%@include file="jspf/messages.jsp"%>

	<%@include file="jspf/navbar.jspf"%>
	<%@include file="jspf/footer.jspf"%>

	<div class="uk-background-muted">

		<div class="uk-section">

			<div class="uk-container">
				<h2 class="uk-heading-line uk-text-center">
					<span>News, updates, and more!</span>
				</h2>
			</div>

			<div class="uk-section">

				<div class="uk-container">
					<div>
						<h3>Latest News</h3>
					</div>
					<div class="uk-section">
						<div class="uk-container uk-container-small">
							<p>This is some text about the latest news...</p>
						</div>
					</div>
					<hr>
					<div>
						<h3>Release Notes</h3>
					</div>
					<div class="uk-section">
						<div class="uk-container uk-container-small">
							<ul uk-accordion="multiple: true">
								<li class="uk-open"><a class="uk-accordion-title" href="#">Release
										v.0.1.2</a>
									<div class="uk-accordion-content">
										<p>This update contained...</p>
									</div></li>
								<li><a class="uk-accordion-title" href="#">Release
										v.0.1.1 (Initial Release)</a>
									<div class="uk-accordion-content">
										<p>This update contained...</p>
									</div></li>
							</ul>
						</div>
					</div>
					<hr>
					<div>
						<h3>Upcoming Features</h3>
					</div>
					<div class="uk-section">
						<div class="uk-container uk-container-small">
							<ul class="uk-list uk-list-bullet">
								<li>Date in future</li>
								<li>Date in future</li>
							</ul>
						</div>
					</div>
				</div>
			</div>

		</div>

	</div>
</body>
</html>