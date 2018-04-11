<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>

<!DOCTYPE html>
<html style="height:100%;">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="apple-touch-icon-precomposed"
	href="images/apple-touch-icon.png">
<link rel="stylesheet" href="css/uikit.docs.min.css">
<script src="../vendor/jquery.js"></script>
<script src="js/uikit.min.js"></script>

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <spring:url value="resources/js/notification.js" var="notJS"/>
    <script type="text/javascript" src="${notJS}"></script>

    <!-- JS & CSS for Tutorial -->
    <spring:url value="resources/js/intro.js" var="introJS"/>
    <script type="text/javascript" src="${introJS}"></script>
    <spring:url value="resources/css/introjs.css" var="introjsCSS"/>
    <link href="${introjsCSS}" rel="stylesheet"/>
    <spring:url value="resources/css/introjs-nassim.css" var="introjsNassimCSS"/>
    <link href="${introjsNassimCSS}" rel="stylesheet"/>
    <spring:url value="resources/css/introjs-rtl.css" var="introjsRtlCSS"/>

    <spring:url value="resources/css/uikit.css" var="uikitCSS"/>
    <spring:url value="resources/js/uikit.js" var="uikitJS"/>
    <spring:url value="resources/js/jquery.js" var="jquery"/>
    <spring:url value="resources/js/uikit-icons.js" var="uikiticons"/>
    <spring:url value="resources/css/main.css" var="mainCSS"/>
    <spring:url value="resources/css/index-listing.css" var="indexListingCSS"/>
    <spring:url value="resources/css/registration.css" var="regCSS"/>

<script type="text/javascript" src="${jquery}"></script>
<script type="text/javascript" src="${uikitJS}"></script><link href="${uikitCSS}" rel="stylesheet"/>
<script type="text/javascript" src="${uikiticons}"></script>

    <title>${title}</title><link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


   <!-- <link href="${mainCSS}" rel="stylesheet"/> -->
    <link href="${regCSS}" rel="stylesheet"/>
    <link href="${indexListingCSS}" rel="stylesheet"/>
    <spring:url value="resources/js/main.js" var="mainJS"/>
    <script type="text/javascript" src="${mainJS}"></script>

    <script src="https://www.paypalobjects.com/api/checkout.js"></script>

    <style>.uk-countdown-number {
        font-size: 22px;
    }

    .uk-countdown-label {
        font-size: 14px;
    }

    .uk-card-media-left img {
        max-height: 100%;
        max-width: 100%;
    }

    .body {
        background-color: #f2f2f2;
    }

    .badge1 {
        position: relative;
    }

    .badge1[data-badge]:after {
        content: attr(data-badge);
        position: absolute;
        top: -20px;
        right: -36px;
        font-size: .7em;
        background: #ff695c;
        color: white;
        width: 18px;
        height: 18px;
        text-align: center;
        line-height: 18px;
        border-radius: 50%;
        box-shadow: 0 0 1px #333;
    }

.badge2 {
	content: attr(data-badge);
	position: absolute;
	background: #ff695c;
	left: 5px;
	bottom: 40px;
	width: 10px;
	height: 10px;
	line-height: 18px;
	border-radius: 50%;
	box-shadow: 0 0 1px #333;
}

.footer {
        position: fixed;
	left: 0;
	bottom: 0;
	width: 100%;
	display: inline-block;
}/*
CANUCKINGTON POST STYLESHEET
A SKYROCKET LABS FREE XHTML/CSS TEMPLATE
http://www.skyrocketlabs.com
fred@skyrocketlabs.com
*/

/* ARCHITECTURE */

body {
	font-family: georgia,"times new roman",times,serif;
	color: #333;
	margin: 0;
	padding: 0;
	background: #fff;
}

#top {
	width: 980px;
	height: 40px;
	margin: 0 auto;
	border-bottom: 4px solid #ddd;
}

#header {
	width: 980px;
	height: 110px;
	margin: 0 auto;
}

#logo, #ad {
	float: left;
	width: 400px;
	height: 110px;
}

#ad {
	width: 580px;
}

#nav {
	width: 980px;
	height: 44px;
	margin: 0 auto;
	background: #dc0000;
}


#sub-nav {
	width: 980px;
	height: 45px;
	margin: 0 auto 10px auto;
}

#content-wrapper {
	width: 980px;
	min-height: 630px;
	margin: 0 auto;
	overflow: hidden;
}

#main {
	float: left;
	width: 660px;
	min-height: 630px;
	margin: 0 20px 0 0;
}

#headlines {
	width: 660px;
	min-height: 300px;
}

#main-headline {
	float: left;
	width: 400px;
	min-height: 300px;
	padding: 0 19px 0 0;
	border-right: 1px solid #ddd;
}

#more-headlines {
	float: right;
	width: 220px;
	min-height: 300px;
	padding: 0 0 0 20px;
}

#sidebars {
	float: right;
	width: 279px;
	min-height: 630px;
	padding: 0 0 0 20px;
	border-left: 1px solid #ddd;
}

#extras {
	width: 980px;
	height: 290px;
	margin: 0 auto;
	border-bottom: 1px solid #ddd;
}

#recommended {
	float: left;
	width: 312px;
	height: 290px;
	margin: 0 20px 0 0;
	padding: 20px 0;
}

#programs {
	float: left;
	width: 312px;
	height: 290px;
	margin: 0 10px 0 0;
	padding: 20px 0;
}

#cartoon {
	float: left;
	width: 312px;
	height: 290px;
	margin: 0 0 0 10px;
	padding: 20px 0;
}

#footer {
	width: 980px;
	height: 60px;
	margin: 0 auto;
}


/* TOP MENU */

#top ul {
	float: right;
	margin: 18px 0 0 0;
	padding: 0;
	list-style: none;
}

#top li {
	display: inline;
	font-size: 0.9em;
	line-height: 1.0em;
	margin: 0 0 0 20px;
	padding: 0;
}

#top li a {
	color: #dc0000;
	text-decoration: none;
}

#top li a:hover {
	color: #000;
	text-decoration: underline;
}

/* MAIN NAV MENU */

#nav ul {
	float: left;
	margin: 0;
	padding: 0 10px;
	list-style: none;
}

#nav li {
	display: inline;
	font-size: 1.0em;
	line-height: 44px;
	text-transform: uppercase;
	margin: 0 29px 0 0;
	padding: 0;
}

#nav li.last {
	margin: 0;
}

#nav li a {
	color: #fff;
	text-decoration: none;
}

#nav li a:hover {
	color: #000;
	text-decoration: none;
}

/* MAIN SUB-NAV MENU */

#sub-nav ul {
	float: left;
	margin: 0;
	padding: 0;
	list-style: none;
}

#sub-nav li {
	display: inline;
	font-size: 0.9em;
	line-height: 45px;
	text-transform: uppercase;
	color: #666;
	margin: 0 15px 0 0;
	padding: 0;
}

#sub-nav li a {
	color: #000;
	text-decoration: none;
}

#sub-nav li a:hover {
	color: #000;
	text-decoration: underline;
}

#sub-nav li.title {
	color: #dc0000;
}

/* FOOTER MENU */

#footer ul {
	float: left;
	margin: 0;
	padding: 0;
	list-style: none;
}

#footer li {
	display: inline;
	font-size: 0.9em;
	line-height: 60px;
	color: #666;
	margin: 0 15px 0 0;
	padding: 0;
}

#footer li a {
	color: #000;
	text-decoration: none;
}

#footer li a:hover {
	color: #000;
	text-decoration: underline;
}

/* TYPOGRAPHY */

#headlines h1, #headlines h2, #headlines h3, #headlines h4, #sidebars h3 {
	font-size: 2.3em;
	font-weight: normal;
	line-height: 1.0em;
	letter-spacing: -1px;
	color: #000;
	margin: 0 0 6px 0;
}

#headlines h2, #headlines h3, #sidebars h3 {
	font-size: 1.7em;
}

#headlines h4 {
	font-size: 1.3em;
	line-height: 1.1em;
}

#headlines h3 {
	margin: 0 0 4px 0;
	padding: 12px 0 0 0;
	border-top: 1px solid #ddd;
}

#headlines h1 a, #headlines h2 a, #headlines h3 a, #headlines h4 a, #sidebars h3 a {
	color: #000;
	text-decoration: none;
}

#headlines h1 a:hover, #headlines h2 a:hover, #headlines h3 a:hover, #headlines h4 a:hover, #sidebars h3 a:hover {
	color: #dc0000;
	text-decoration: underline;
}

#headlines h2.heading, #sidebars h2.heading-blue, #sidebars h2.heading {
	font: bold 0.8em arial,verdana,tahoma,sans-serif;
	line-height: 1.0em;
	letter-spacing: 0px;
	text-transform: uppercase;
	color: #fff;
	margin: 0 0 8px 0;
	padding: 7px 6px 6px 6px;
	background: #dc0000;
}

#sidebars h2.heading-blue {
	background: #2c6fae;
}

#sidebars h4 {
	font: bold 1.0em arial,verdana,tahoma,sans-serif;
	line-height: 1.2em;
	margin: 0 0 9px 0;
	padding: 5px 0 0 0;
}

#sidebars h4 a {
	color: #dc0000;
	text-decoration: none;
}

#sidebars h4 a:hover {
	color: #000;
	text-decoration: underline;
}

#main p, #sidebars p {
	font-size: 1.0em;
	line-height: 1.4em;
	margin: 0 0 16px 0;
}

#main p.author, #sidebars p.author {
	font: bold 0.8em arial,verdana,tahoma,sans-serif;
	line-height: 1.0em;
	margin: 0 0 10px 0;
	color: #999;
}

#main p.author span, #sidebars p.author span {
	color: #2c6fae;
}

#main p a, #sidebars p a {
	color: #dc0000;
	text-decoration: none;
}

#main p a:hover, #sidebars p a:hover {
	color: #dc0000;
	text-decoration: underline;
}

#extras h2.heading {
	font-size: 1.5em;
	font-weight: normal;
	line-height: 1.0em;
	letter-spacing: -1px;
	color: #000;
	margin: 0;
	padding: 10px 0;
	border-top: 4px solid #000;
	border-bottom: 1px solid #ddd;
}

#extras ul {
	margin: 0;
	padding: 0;
	list-style: none;
}

#extras li {
	font-size: 1.0em;
	line-height: 1.3em;
	margin: 0;
	padding: 9px 0;
	border-bottom: 1px dotted #ccc;
}

#extras li.last {
	padding: 6px 0 0 0;
	border-bottom: none;
}

#extras li a {
	color: #dc0000;
	text-decoration: none;
}

#extras li a:hover {
	color: #000;
	text-decoration: none;
}

/* IMAGES */

#logo img {
	border: 0;
}

#ad img {
	margin: 15px 0 0 0;
	border: 0;
}

#sub-nav img {
	margin: 0 5px 0 0;
	border: 0;
	vertical-align: middle;
}

#main-headline img {
	margin: 0 0 6px 0;
	border: 0;
}

#main img.lefty {
	float: left;
	margin: 0 10px 0 0;
	border: 0;
}

#main img.righty {
	float: right;
	margin: 0 0 0 10px;
	border: 0;
}

#sidebars img.ad, #sidebars img.ad-right {
	margin: 0 24px 24px 0;
	border: 0;
}

#sidebars img.ad-right {
	margin: 0 0 24px 0;
}

#extras img {
	margin: 8px 0 0 0;
	border: 0;
}

/* FORMS */

fieldset {
	margin: 0;
	padding: 0;
	border: 0;
}

#search form {
	margin: 40px 0 0 0;
}

.searchfield {
	font: normal 1.0em georgia,"times new roman",times,serif;
	color: #000;
	margin: 0 6px 0 0;
	padding: 6px;
	background: #fff;
	border: 1px solid #aaa;
}

.searchbtn {
	font: normal 1.2em georgia,"times new roman",times,serif;
	color: #000;
	margin: 0;
	padding: 2px;
}
@import url(https://fonts.googleapis.com/css?family=Source+Code+Pro|Oswald);

/****************************************/
/* Styling rules, such as font and colors */
.date-as-calendar {
	font-variant: normal;
	font-style: normal;
	font-weight: normal;
	font-family: "Helvetica", "Arial", sans-serif;

	/* It seems vertical-align: baseline does not work correctly with display: inline-flex. */
	vertical-align: top;

	/* margin: 1ex; */

	color: black;
	background: white;
	background : linear-gradient(to bottom right, #FFF 0%, #EEE 100%);

	border: 1px solid #888;
	border-radius: 3px;
	overflow: hidden;

	box-shadow: 2px 2px 2px -2px black;
}
.date-as-calendar .weekday,
.date-as-calendar .day,
.date-as-calendar .month,
.date-as-calendar .year {
	text-align: center;
	line-height: 1.0;
}
.date-as-calendar .month {
	font-family: "Oswald", sans-serif;
	text-transform: uppercase;
	background: #B11;
	background : linear-gradient(to bottom right, #D66 0%, #A00 100%);
	color: white;
}

/****************************************/
/* Layout rules using position: absolute and pixels. */
.position-pixels.date-as-calendar {
	display: inline-block;
	position: relative;
	width: 64px;
	height: 64px;
}
.position-pixels.date-as-calendar .weekday,
.position-pixels.date-as-calendar .day,
.position-pixels.date-as-calendar .month,
.position-pixels.date-as-calendar .year {
	display: block;
	position: absolute;
	left: 0;
	right: 0;
	width: 100%;
	height: 1em;
}
.position-pixels.date-as-calendar .month {
	top: 0px;
	font-size: 12px;
	padding: 2px 0;
}
.position-pixels.date-as-calendar .weekday {
	top: 16px;
	font-size: 10px;
}
.position-pixels.date-as-calendar .day {
	top: 26px;
	font-size: 24px;
}
.position-pixels.date-as-calendar .year {
	top: 50px;
	font-size: 14px;
}

/****************************************/
/* Layout rules using position: absolute and relative dimensions using em. */
.position-em.date-as-calendar {
	display: inline-block;
	position: relative;

	width: 5em;
	height: 4em;
}
.position-em.date-as-calendar .weekday,
.position-em.date-as-calendar .day,
.position-em.date-as-calendar .month,
.position-em.date-as-calendar .year {
	display: block;
	position: absolute;
	left: 0;
	right: 0;
	width: 100%;
	height: 1em;
}
.position-em.date-as-calendar .month {
	top: 0px;
	font-size: 0.75em;
	padding: 0.1em 0;
}
.position-em.date-as-calendar .weekday {
	top: 1.6em;
	font-size: 0.6125em;
}
.position-em.date-as-calendar .day {
	top: 1.1em;
	font-size: 1.5em
}
.position-em.date-as-calendar .year {
	bottom: 0px;
	font-size: 0.87750em;
}

/****************************************/
/* Layout rules using display: inline-flex and relative dimensions using em. */
.inline-flex.date-as-calendar {
	display: inline-flex;
	flex-direction: column;
	flex-wrap: nowrap;
	justify-content: space-between;

	width: 5em;
	height: 4em;
}
.inline-flex.date-as-calendar .weekday,
.inline-flex.date-as-calendar .day,
.inline-flex.date-as-calendar .month,
.inline-flex.date-as-calendar .year {
	display: block;
	flex: 1 1 auto;
}
.inline-flex.date-as-calendar .month {
	order: 1;
	font-size: 0.75em;
	padding: 0.1em 0;
}
.inline-flex.date-as-calendar .weekday {
	order: 2;
	font-size: 0.6125em;
}
.inline-flex.date-as-calendar .day {
	order: 3;
	font-size: 1.5em;
}
.inline-flex.date-as-calendar .year {
	order: 4;
	font-size: 0.87750em;
}

/****************************************/
/* Multiple sizes. */
.date-as-calendar.size0_5x {
	font-size: 8px;
}
.date-as-calendar.size0_75x {
	font-size: 12px;
}
.date-as-calendar.size1x {
	font-size: 16px;
}
.date-as-calendar.size1_25x {
	font-size: 20px;
}
.date-as-calendar.size1_5x {
	font-size: 24px;
}
.date-as-calendar.size1_75x {
	font-size: 28px;
}
.date-as-calendar.size2x {
	font-size: 32px;
}
.date-as-calendar.size3x {
	font-size: 48px;
}</style>
</head>
<script src="//platform.linkedin.com/in.js" type="text/javascript"></script>