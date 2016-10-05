<main class="photo">
	<div class="l-container">
		<h1 class="section_title">$Title</h1>
		<div class="u-push-btm u-push-btm-half@md">
			<% include FiltersDark %>
		</div>
		<div class="g-row g-clear-2@sm">
			<% loop Photos %>
				<div class="g g-12 g-6@sm">
					<a class="photo_preview" href="$link">
						<div class="photo_inner">
							<img class="u-img-max" src="$Image.URL" alt="#">
							<h2 class="photo_title">$Title</h2>
							<span class="photo_category">$Category</span>
						</div>
					</a>
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
