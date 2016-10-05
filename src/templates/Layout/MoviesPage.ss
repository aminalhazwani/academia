<main class="movie">
	<div class="l-container">
		<h1 class="section_title">$Title</h1>
		<div class="u-push-btm u-push-btm-half@md">
			<% include FiltersDark %>
		</div>
		<div class="g-row g-clear-2@sm g-clear-3@md g-clear-4@lg">
			<% loop Movies %>
				<div class="g g-12 g-6@sm g-4@md g-3@lg">
					<a class="movie_poster" href="$Link">
						<img class="u-img-max" src="$Image.URL" alt="#">
					</a>
					<a href="$Link">
						<h2 class="movie_title-small">$Title</h2>
					</a>
					<p class="movie_plays">$PlayCount</p>
				</div>
			<% end_loop %>
		</div>
		<div class="g-row u-push-top-double">
			<div class="g g-12 g-6@sm g-4@md g-3@lg">
				<a href="#" class="btn btn-invert u-push-btm u-push-btm-none@md" disabled>Newer</a>
			</div>
			<div class="g g-12 g-6@sm g-4@md g-3@lg g-push-4@md g-push-6@lg">
				<a href="#" class="btn btn-invert">Older</a>
			</div>
		</div>
	</div>
</main>
