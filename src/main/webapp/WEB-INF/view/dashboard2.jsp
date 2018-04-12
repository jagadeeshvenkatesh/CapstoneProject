<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="resources/css/uikit.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Muli" rel="stylesheet">
    <script type="text/javascript" src="resources/js/jquery.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/list.js/1.5.0/list.min.js"></script>

    <style>
        <!--
        .uk-panel {
            border: 0;
            min-height: 400px;
            max-height: 600px;
        }

        -->

        .full-wrap {
        <!-- border: 25 px outset rgba(36, 143, 203, 0.20);
        --> border: 20px solid white;
            max-width: 1350px;
            margin: 0 auto;
            background: white;
        }

        p, h3, li, a {
            font-family: 'Muli', sans-serif;
        }
    </style>

</head>

<div style="border: 20px solid white;
            margin: 0 auto;
            background: white;">
    <!--class="full-wrap" max-width: 1350px;-->
    <body>

    <!-- style="background-color: #b0c4de; background-image: linear-gradient(52deg, #b0c4de 25%, #2c57ff 100%);" -->

    <%@include file="jspf/navbar.jspf" %>

    <!-- 1st Section: Data/welcome/statistics -->

    <div class="uk-section uk-background-muted">

        <%@include file="dashboard/welcome-statistics.jsp" %>

    </div>

    <!-- 2nd Section: Listings/Content -->

    <div class="uk-section">

        <div class="uk-container uk-container-expand">
            <!-- class="uk-grid-large" -->
            <div uk-grid="" class="uk-grid">
                <div class="uk-width-auto@m uk-width-1-3@s uk-first-column">
                    <!-- uk-padding-small uk-background-muted -->
                    <div class="uk-padding-small uk-border-rounded">
                        <ul class="uk-nav uk-nav-default"
                            uk-switcher="connect: #seller-content; animation: uk-animation-fade; toggle: > :not(.uk-nav-header)">
                            <li aria-expanded="true" class="uk-active"><a href="#">All</a></li>
                            <li aria-expanded="false"><a href="#">Active</a></li>
                            <li aria-expanded="false"><a href="#">InActive</a></li>
                            <li aria-expanded="false"><a href="#">Won</a></li>
                            <li aria-expanded="false"><a href="#">Lost</a></li>
                            <li aria-expanded="false"><a href="#">Current bids</a></li>
                            <li aria-expanded="false"><a href="#">Sold</a></li>
                        </ul>
                        <!-- "My" listings (active, inactive, etc), listings won, listings lost, current bids, listings sold (subsection of my listings) -->
                    </div>
                </div>
                <div class="uk-width-expand@m uk-width-2-3@s">

                    <!-- Begin content switcher -->
                    <ul id="seller-content" class="uk-switcher">

                        <!-- 1st set of content: All listings -->
                        <%@include file="dashboard/switcher-content/all-listings.jsp" %>

                        <!-- 2nd set of content: Active listings -->
                        <%@include file="dashboard/switcher-content/active-listings.jsp" %>

                        <!-- 3rd set of content: Inactive listings -->
                        <%@include file="dashboard/switcher-content/inactive-listings.jsp" %>

                        <!-- 4th set of content: Won listings -->
                        <%@include file="dashboard/switcher-content/won-listings.jsp" %>

                        <!-- 5th set of content: Lost listings -->
                        <%@include file="dashboard/switcher-content/lost-listings.jsp" %>

                        <!-- 6th set of content: Current-bid listings -->
                        <%@include file="dashboard/switcher-content/current-bid-listings.jsp" %>

                        <!-- 7th set of content: Sold listings -->
                        <%@include file="dashboard/switcher-content/sold-listings.jsp" %>

                    </ul>
                    <!-- End content switcher -->
                </div>
            </div>
        </div>

    </div>

    <!-- 3rd Section: Tables -->

    <!-- uk-height-viewport="expand: true" -->
    <div class="uk-section uk-background-muted" uk-height-viewport="min-height:300"
         style="box-sizing: border-box; min-height: 100vh; height: 100vh;">
        <!-- uk-height-viewport="min-height:300" -->
        <div class="uk-container uk-container-expand">
            <div class="uk-grid-small uk-child-width-1-2@m uk-child-width-1-3@l uk-padding-small uk-grid" uk-grid="">

                <%@include file="dashboard/dashboard-offers.jsp" %>
                <%@include file="dashboard/dashboard-meetings.jsp" %>
                <%@include file="dashboard/dashboard-transactions.jsp" %>

            </div>
        </div>

    </div>

    <script type="text/javascript">

        var options = {
            valueNames: ['name', {attr: 'data-timestamp', name: 'timestamp'}, 'category', 'price', 'type']
        };

        var allListings = new List('allListings', options);

        var activeListings = new List('activeListings', options);

        var meetups = new List('meetups', options);

        var offers = new List('offers', options);

        var transactions = new List('transactions', options);


    </script>
    </body>
</div>

<script type="text/javascript" src="resources/js/uikit.js"></script>
<script type="text/javascript" src="resources/js/uikit-icons.js"></script>

</html>