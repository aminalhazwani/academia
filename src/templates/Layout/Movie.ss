<main class="movie">
	<div class="l-container">
		<div class="g-row u-push-btm u-push-btm-double@lg">
			<h1 class="movie_title">$Title</h1>
			<div class="g g-12 g-8@md g-9@lg">
				<div class="u-img-max u-push-btm-half">
					<iframe src='//www.youtube.com/embed/$VideoID' width='100%' height='100%' frameborder='0' allowfullscreen></iframe>
				</div>
				Views: $Views
				$MaxResImage
				<%--
				<video class="u-img-max u-push-btm-half" controls poster="$Image.URL">
					<source src="#" type="video/webm">
					<source src="#" type="video/mp4">
					<source src="#" type="video/ogg">
					Your browser doesn't support HTML5 video tag.
				</video>
				--%>
			</div>
			<div class="g g-12 g-4@md g-3@lg">
				<p class="movie_description">$Description</p>
				<span class="movie_plays">$PlayCount plays</span>
			</div>
		</div>
		<h4 class="u-ta-center u-push-btm">Related Movies</h4>
		<div class="g-row g-row g-clear-2@sm g-clear-4@md">
			<% loop $Related(4) %>
				<div class="g g-12 g-6@sm g-3@md">
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
	</div>
</main>
