<%@include file="jspf/header.jsp" %>
<%@include file="jspf/messages.jsp" %>
<body class="uk-height-viewport uk-background-muted">
<div style="border: 20px solid white;
margin: 0 auto;
background: white;">
    <%@include file="jspf/navbar.jspf" %>
    <div class="uk-container">
        <div class="row">
            <div class="fb-profile uk-align-center">
                <c:forEach items="${user.profileImages}" var="images">
                    <c:if test="${images.main == 1}">
                        <a href="${pageContext.request.contextPath}/editUser?id=${user.userID}"><img
                                align="left" style="border-radius: 50%"
                                class="fb-image-profile thumbnail"
                                src="${pageContext.request.contextPath}/directory/${images.image_path}/${images.image_name}"
                                width="190" height="190"
                                alt="Profile Image" uk-tooltip="Edit Profile Data"/></a>
                    </c:if>
                </c:forEach>
                <div class="uk-align-center fb-profile-text uk-padding-small uk-width-2-3">
                    <h1>
                        <strong class="uk-text-danger">${user.username}</strong>
                    </h1>
                    <p></p><i><strong>
                    <div class="uk-heading-line uk-padding-small uk-text-left uk-text-uppercase uk-text-bold">${user.firstName} ${user.lastName}</div>
                </strong></i></p>
                </div>
            </div>
        </div>
    </div>
    <!-- /container fluid-->
    <div class="uk-margin-left uk-section uk-section-muted">
        <div class="uk-grid uk-margin-left">
            <div class="uk-width-1-4 uk-column-divider uk-grid" uk-grid
                 uk-scrollspy="cls: uk-animation-fade; target: > div > .uk-card; delay: 500; repeat: true">
                <div class="uk-margin-left uk-container uk-container-small">
                    <dl
                            class="uk-margin-left uk-description-list uk-description-list-divider">
                        <dt>
                            <strong class="uk-text-danger">Joined Date</strong>
                        </dt>
                        <dd>${user.truncatedDate}</dd>
                        <dt>
                            <strong class="uk-text-danger">About Me</strong>
                        </dt>
                        <dd>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</dd>
                        <dt>
                            <strong class="uk-text-danger">Seller Rating</strong>
                        </dt>
                        <c:choose>
                            <c:when
                                    test="${user.sellerRating == null || user.sellerRating == 0}">
                                <dd>This user does not have any transactions!</dd>
                            </c:when>
                            <c:otherwise>
                                <c:choose>
                                    <c:when test="${user.sellerRating == 1}">
                                        <td><i class="fas fa-star"></i><i class="far fa-star"></i><i
                                                class="far fa-star"></i><i class="far fa-star"></i><i
                                                class="far fa-star"></i></td>
                                    </c:when>
                                    <c:when test="${user.sellerRating == 2}">
                                        <td><i class="fas fa-star"></i><i class="fas fa-star"></i><i
                                                class="far fa-star"></i><i
                                                class="far fa-star"></i><i class="far fa-star"></i></td>
                                    </c:when>
                                    <c:when test="${user.sellerRating == 3}">
                                        <td><i class="fas fa-star"></i><i class="fas fa-star"></i><i
                                                class="fas fa-star"></i><i class="far fa-star"></i><i
                                                class="far fa-star"></i>
                                        </td>
                                    </c:when>
                                    <c:when test="${user.sellerRating == 4}">
                                        <td><i class="fas fa-star"></i><i class="fas fa-star"></i><i
                                                class="fas fa-star"></i><i class="fas fa-star"></i><i
                                                class="far fa-star"></i></td>
                                    </c:when>
                                    <c:when test="${user.sellerRating == 5}">
                                        <td><i class="fas fa-star"></i><i class="fas fa-star"></i><i
                                                class="fas fa-star"></i><i class="fas fa-star"></i><i
                                                class="fas fa-star"></i></td>
                                    </c:when>
                                </c:choose>
                                <dd></dd>
                                <dd class="uk-margin-top">
                                    <a
                                            href="${pageContext.request.contextPath}/sellerReviews?id=${user.userID}"
                                            class="uk-button uk-button-small uk-border-rounded uk-button-secondary">View
                                        Seller Reviews</a>
                                </dd>
                            </c:otherwise>
                        </c:choose>
                        <dt>
                            <strong class="uk-text-danger">Connections</strong>
                        </dt>
                        <dd>
                            <c:if test="${sessionScope.user.userID != user.userID }">
                                <br>
                                <c:choose>
                                    <c:when test="${isFollowing == 'follow'}">
                                        <div class="uk-clearfix" id="follow">
                                            <div class="uk-float-left">
                                                <input type="hidden" id="followUser" value="${user.userID}">
                                                <button class="uk-button uk-button-default uk-width-1-1"
                                                        type="button" onclick="follow()" data-uk-button>+
                                                    Follow
                                                </button>
                                            </div>
                                        </div>

                                        <div class="uk-clearfix" id="unfollow" style="display: none;">
                                            <div class="uk-float-left">
                                                <input type="hidden" id="unfollowUser"
                                                       value="${user.userID}">
                                                <button class="uk-button uk-button-danger uk-width-1-1"
                                                        type="button" value="${user.userID}" onclick="unfollow()"
                                                        data-uk-button>Following
                                                </button>
                                            </div>
                                        </div>
                                    </c:when>
                                    <c:otherwise>
                                        <div class="uk-clearfix" id="follow" style="display: none;">
                                            <div class="uk-float-left">
                                                <input type="hidden" id="followUser" value="${user.userID}">
                                                <button class="uk-button uk-button-default uk-width-1-1"
                                                        type="button" onclick="follow()" data-uk-button>+
                                                    Follow
                                                </button>
                                            </div>
                                        </div>

                                        <div class="uk-clearfix" id="unfollow">
                                            <div class="uk-float-left">
                                                <input type="hidden" id="unfollowUser"
                                                       value="${user.userID}">
                                                <button class="uk-button uk-button-danger uk-width-1-1"
                                                        type="button" value="${user.userID}" onclick="unfollow()"
                                                        data-uk-button>Following
                                                </button>
                                            </div>
                                        </div>
                                    </c:otherwise>
                                </c:choose>

                            </c:if>
                            <br>
                            <c:if test="${sessionScope.user.userID == user.userID }">
                            <script>
                                $(document).ready(function () {
                                    var text = "";
                                    $.ajax({
                                        url: 'getFollowers',
                                        type: 'GET',
                                        dataType: 'json',
                                        contentType: 'application/json',
                                        success: function (result) {
                                            console.log(result);
                                            listings = result;
                                            if(Object.keys(result).length == 0){
                                                text += '<div class="uk-position-center"><h2>You dont have anyone following you</h2></div>';
                                            }else {
                                                for (var key in result) {
                                                    text += '<div class="uk-card uk-card-default uk-card-body uk-card-small uk-margin-small-top">' +
                                                        '<img class="uk-border-circle uk-align-left uk-margin-auto-vertical" src="/directory/' + result[key].followerImage + '" height="75" width="75" alt="Border circle">' +
                                                        '<span class="uk-flex-top uk-flex-left uk-text-danger" style="font-size:large">' + result[key].followerUserName + '</span>' +
                                                        '<span class="uk-flex-top uk-flex-right"> </span>' +
                                                        '<span class="uk-flex-left">' + result[key].followerFirstName + ' ' + result[key].followerLastName + '</span>' +
                                                        '</div>'
                                                }
                                            }
                                            $('#followersContainer').empty();
                                            $('#followersContainer').append(text);
                                        }
                                    });

                                    $.ajax({
                                        url: 'getFollowing',
                                        type: 'GET',
                                        dataType: 'json',
                                        contentType: 'application/json',
                                        success: function (result) {
                                            console.log(result);
                                            listings = result;
                                            if(Object.keys(result).length == 0){
                                                text += '<div class="uk-position-center"><h2>You are not following anyone</h2></div>';
                                            }else {
                                                for (var key in result) {

                                                    text += '<div class="uk-card uk-card-default uk-card-body uk-card-small uk-margin-small-top">' +
                                                        '<img class="uk-border-circle uk-align-left uk-margin-auto-vertical" src="/directory/' + result[key].followerImage + '" height="75" width="75" alt="Border circle">' +
                                                        '<span class="uk-flex-top uk-align-left uk-text-danger" style="font-size:large">' + result[key].followerUsername + '</span>' +
                                                        '<button class="uk-flex-top uk-flex-right uk-align-right" uk-icon="minus-circle" value="' + result[key].followerId + '" onclick=""></button>' +
                                                        '<span class="uk-flex-left">' + result[key].followerFirstName + ', ' + result[key].followerLastName + '</span>' +
                                                        '</div>'
                                                }
                                            }
                                            $('#followingContainer').empty();
                                            $('#followingContainer').append(text);
                                        }
                                    });
                                });

                            </script>
                            <ul class="uk-subnav uk-subnav-pill" uk-switcher="animation: uk-animation-fade">
                                <li><a href="#">Followers</a></li>
                                <li><a href="#">Following</a></li>
                            </ul>

                            <ul class="uk-switcher uk-margin">
                                <li>
                                    <div class="uk-grid-small uk-child-width-expand uk-text-center" uk-grid>
                                        <div class="uk-panel uk-panel-scrollable uk-resize-vertical uk-height-large uk-padding-remove uk-background-muted uk-border-rounded uk-margin-large-bottom">
                                            <div id="followersContainer" class="uk-flex uk-flex-column uk-width-1-1">
                                                <div class="uk-card uk-card-default uk-card-body uk-card-small uk-margin-small-top">
                                                    <img class="uk-border-circle uk-align-left uk-margin-auto-vertical" src="/resources/img/sunset.jpg" height="75" width="75" alt="Border circle">
                                                    <span class="uk-flex-top uk-flex-left uk-text-danger" style="font-size:large">Lorem ipsum</span>
                                                    <span class="uk-flex-top uk-flex-right uk-align-right" uk-icon="minus-circle"></span>
                                                    <span>test123</span>
                                                </div>
                                                <div class="uk-card uk-card-default uk-card-body uk-card-small uk-margin-small-top">
                                                    <img class="uk-border-circle uk-align-left uk-margin-auto-vertical" src="/resources/img/sunset.jpg" height="75" width="75" alt="Border circle">
                                                    <p>Lorem ipsum</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="uk-grid-small uk-child-width-expand uk-text-center" uk-grid>
                                        <div id="allListings" class="uk-panel uk-panel-scrollable uk-resize-vertical uk-height-large uk-padding-remove uk-background-muted uk-border-rounded uk-margin-large-bottom">
                                            <div id="followingContainer" class="uk-flex uk-flex-column uk-width-1-1">
                                                <div class="uk-card uk-card-default uk-card-body uk-card-small uk-margin-small-top">
                                                    <img class="uk-border-circle uk-align-left uk-margin-auto-vertical" src="/resources/img/sunset.jpg" height="75" width="75" alt="Border circle">
                                                    <span class="uk-flex-top uk-flex-left uk-text-danger" style="font-size:large">Lorem ipsum</span>
                                                    <span class="uk-flex-top uk-flex-right"> </span>
                                                    <span class="uk-flex-left">test123</span>
                                                </div>
                                                <div class="uk-card uk-card-default uk-card-body uk-card-small uk-margin-small-top">
                                                    <img class="uk-border-circle uk-align-left uk-margin-auto-vertical" src="/resources/img/sunset.jpg" height="75" width="75" alt="Border circle">
                                                    <p>Lorem ipsum</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                    </c:if>
                            <c:choose>
                                <c:when test="${isFollowing == 'following' }">
                                    <div class="uk-clearfix" id="followingTotal">
                                        <div class="uk-float-left">
                                            <strong class="uk-text-danger">${yourFollowing.size()}</strong>
                                            Followers
                                        </div>
                                        <div class="uk-float-right">
                                            <strong class="uk-text-danger">${peopleFollowingYou.size()}</strong>
                                            Following
                                        </div>
                                    </div>
                                    <div class="uk-clearfix" id="followingTotalNew"
                                         style="display: none;">
                                        <div class="uk-float-left">
                                            <strong class="uk-text-danger">${yourFollowing.size() + 1}</strong>
                                            Followers
                                        </div>
                                        <div class="uk-float-right">
                                            <strong class="uk-text-danger">${peopleFollowingYou.size()}</strong>
                                            Following
                                        </div>
                                    </div>
                                </c:when>
                                <c:otherwise>
                                    <div class="uk-clearfix" id="followingTotal">
                                        <div class="uk-float-left">
                                            <strong class="uk-text-danger">${yourFollowing.size()}</strong>
                                            Followers
                                        </div>
                                        <div class="uk-float-right">
                                            <strong class="uk-text-danger">${peopleFollowingYou.size()}</strong>
                                            Following
                                        </div>
                                    </div>
                                    <div class="uk-clearfix" id="followingTotalNew"
                                         style="display: none;">
                                        <div class="uk-float-left">
                                            <strong class="uk-text-danger">${yourFollowing.size() - 1}</strong>
                                            Followers
                                        </div>
                                        <div class="uk-float-right">
                                            <strong class="uk-text-danger">${peopleFollowingYou.size()}</strong>
                                            Following
                                        </div>
                                    </div>

                                </c:otherwise>
                            </c:choose>

                        </dd>
                    </dl>
                </div>
            </div>
            <div class="uk-width-3-4">
                <div class="uk-container uk-container-small">

                    <c:choose>
                        <c:when test="${sessionScope.user.userID == user.userID }">
                            <h4>
                                <strong class="uk-text-danger">Your</strong> listing(s).
                            </h4>
                        </c:when>

                        <c:otherwise>
                            <h4>
                                <strong class="uk-text-danger"> ${user.username}'s</strong> listing(s).
                            </h4>
                        </c:otherwise>
                    </c:choose>
                    <hr>
                    <div class="uk-grid-large uk-child-width-1-3 uk-text-center"
                         uk-grid>
                        <c:forEach var="listing" items="${userListings}">
                            <c:if test="${listing.active == 1}">
                                <c:if test="${listing.draft == 0}">
                                    <%@include file="listing/index-listing.jsp" %>
                                </c:if>
                            </c:if>
                        </c:forEach>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    $(".watch-item").click(function () {
        var id = $(this).attr('id')
        $(this).toggleClass('watch-item');
        console.log("Hit Ajax")
        $.ajax({
            type: "POST",
            url: "watchListing",
            data: {
                listingID: id
            },
            success: function () {
                console.log("Complete")
            },

        });
    })

    function follow() {
        document.getElementById('unfollow').style.display = "inline";
        document.getElementById('follow').style.display = "none";
        document.getElementById('followingTotalNew').style.display = "inline";
        document.getElementById('followingTotal').style.display = "none";
        var userID = document.getElementById('followUser').value;
        $.ajax({
            type: 'GET',
            url: 'followUser',
            data: {
                result: "follow",
                followerId: userID
            }
        });
    }

    function unfollow() {
        document.getElementById('unfollow').style.display = "none";
        document.getElementById('follow').style.display = "inline";
        document.getElementById('followingTotalNew').style.display = "none";
        document.getElementById('followingTotal').style.display = "inline";
        var userID = document.getElementById('unfollowUser').value;
        $.ajax({
            type: 'GET',
            url: 'followUser',
            data: {
                result: "unfollow",
                followerId: userID

            }
        });
    }
</script>
</body>
<%@include file="jspf/footer.jspf" %>
</div>
</html>