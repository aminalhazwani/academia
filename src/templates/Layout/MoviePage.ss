<main class="movie">
	<div class="l-container">
		<h1 class="section_title">$Title</h1>
		<div class="u-push-btm u-push-btm-half@md">
			<div class="filter">
				$SearchForm(true)
			</div>
		</div>
		<% if $Results %>
			<div class="g-row g-clear-2@sm g-clear-3@md g-clear-4@lg">
				<% loop $Results %>
					<div class="g g-12 g-6@sm g-4@md g-3@lg">
						<a class="movie_poster" href="$Link">
							<img class="u-img-max" src="$Image.URL" alt="#">
						</a>
						<a href="$Link">
							<h2 class="movie_title-small">$Title</h2>
						</a>
						<p class="movie_plays">$PlayCount plays</p>
					</div>
				<% end_loop %>
			</div>
			<% include PaginationDark %>
		<% end_if %>
	</div>
</main>
