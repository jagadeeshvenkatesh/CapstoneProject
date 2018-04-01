<div class="uk-card-header">
	<div class="uk-grid-small uk-flex-middle" uk-grid>
		<div class="uk-inline">
			<a class="uk-preserve" type="button">
				<img alt="filter" class="uk-preserve"
					src="${pageContext.request.contextPath}/resources/icons/filter-list-icon.svg" width="25" height="auto" uk-svg>
			</a>
			<div uk-dropdown="mode: click">
				<ul class="uk-nav uk-dropdown-nav">
					<li class="uk-active"><a href="#">Active</a></li>
					<li><a href="#">In progress</a></li>
					<li><a href="#">Completed</a></li>
					<li><a href="#">Cancelled</a></li>
					<li><a href="#">Newest to oldest</a></li>
					<li><a href="#">Oldest to newest</a></li>
				</ul>
			</div>
		</div>
		<h3 class="uk-card-title uk-text-center">Transactions</h3>

	</div>
</div>