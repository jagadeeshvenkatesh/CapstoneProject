

<%@include file="jspf/header.jsp"%>
<body>
	<div class="uk-position-relative">
		<div class="uk-position-relativetop">
			<nav class="uk-navbar-container uk-navbar-dark" uk-navbar>
				<div class="uk-navbar-center">
					<ul class="uk-navbar-nav">
						<li class="uk-active"><a
							href="${pageContext.request.contextPath}/admin">Dashboard</a></li>
						<li><a href="${pageContext.request.contextPath}/adminUser">Manage
								Users</a></li>
						<li><a href="${pageContext.request.contextPath}/adminListing">Manage
								Listings</a></li>
						<li><a
							href="${pageContext.request.contextPath}/adminDisputes">Manage
								Disputes</a></li>
						<li><a href="${pageContext.request.contextPath}/eventsNews">Events/News</a>
						</li>

					</ul>
				</div>
				<div class="uk-navbar-right">
					<ul class="uk-navbar-nav">
						<li><a>Welcome ${user.firstName}</a></li>
						<li><a href="${pageContext.request.contextPath}/">Home</a></li>
						<li><a href="${pageContext.request.contextPath}/logout">Logout</a>
						</li>
					</ul>
				</div>
			</nav>
		</div>
	</div>

	<div class="uk-container">
		<div class="uk-card uk-card-default uk-width-1-1@m">
			<div class="uk-card-header">
				<div class="uk-grid-small uk-flex-middle" uk-grid>

					<div class="uk-width-expand">
						<h3 class="uk-card-title uk-margin-remove-bottom">Creating
							Events and News</h3>

					</div>
				</div>
			</div>

			<div class="uk-card-body">
				<div uk-grid>
					<div class="uk-width-1-2">
						<form method="POST" action="createEvent"
							enctype="multipart/form-data">
							<fieldset class="uk-fieldset">

								<legend class="uk-legend uk-text-bold">Events</legend>
								<div uk-grid>
									<div class="uk-width-1-2 uk-margin">
										<input class="uk-input" name="title" type="text"
											placeholder="Input">
									</div>

									<div class=" uk-width-1-2 uk-margin">
										<select class="uk-select" name="location">
											<option value="birck">Birck Hall of Science</option>
											<option value="field">Football/Soccer Field</option>
											<option value="goodwin">Goodwin Hall of Business</option>
											<option value="krasa">Krasa Student Center</option>
											<option value="rice">Rice Center</option>
											<option value="abbey">St. Precopious Abbey</option>
											<option value="scholl">Scholl Hall</option>
										</select>
									</div>
								</div>
								<div uk-grid>

									<div class="uk-width-1-2" id="dateStart">
										<strong>Start Date</strong><input type="datetime-local"
											class="uk-input" id="startDate" name="startDate"
											placeholder="End Date">
									</div>
									<div class="uk-width-1-2" id="dateEnd">
										<strong>End Date</strong><input type="datetime-local"
											class="uk-input" id="endDate" name="endDate"
											placeholder="End Date">
									</div>
								</div>
								<div class="uk-margin">
									<textarea class="uk-textarea" name="description" rows="5"
										placeholder="Textarea"></textarea>
								</div>

								<br>
								<button type="submit"
									class="uk-button uk-button-primary uk-width-1-1 uk-margin-small-bottom">Create Event</button>


							</fieldset>
						</form>
					</div>
					<div class="uk-width-1-2">
						<form method="POST" action="uploadNews"
							enctype="multipart/form-data">
							<fieldset class="uk-fieldset">

								<legend class="uk-legend uk-text-bold">News</legend>

								<div class="uk-margin">
									<input class="uk-input" name="title" type="text" placeholder="Input">
								</div>
								<div uk-grid>
									<div class="uk-width-1-2">
										<strong>Upload News Article:</strong> <input id="doc"
											type="file" name="doc"> <span class="val_error"
											id="image_error"></span>
									</div>
									<div class="uk-width-1-2">
										<strong>Upload News Article Image:</strong> <input id="image"
											type="file" name="image"> <span class="val_error"
											id="image_error"></span>
									</div>
								</div>
								<div class="uk-margin">
									<textarea class="uk-textarea" name="description" rows="5"
										placeholder="Textarea"></textarea>
								</div>
								
								<br>
								<button type="submit"
									class="uk-button uk-button-primary uk-width-1-1 uk-margin-small-bottom">Create News</button>
							</fieldset>
						</form>
					</div>
				</div>
			</div>
		</div>

	</div>

</body>
</html>
