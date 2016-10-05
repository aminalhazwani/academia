<main>
	<div class="l-container">
		<h1 class="section_title">$Title</h1>
		<div class="u-push-btm u-push-btm-half@md">
			<% include Filters %>
		</div>
		<div class="articlePreview">
			<% loop Articles %>
				<div class="articlePreview_inner articlePreview_inner-archive">
					<% if $Image %>
						<a href="$Link">
							<div class="articlePreview_picture">
								<span class="articlePreview_type articlePreview_type-white">$Type</span>
								<img class="articlePreview_cover" src="$Image.URL" alt="#">
							</div>
						</a>
					<% else %>
						<span class="articlePreview_type">$Type</span>
					<% end_if %>
					<a href="$Link">
						<h6 class="articlePreview_title articlePreview_title-archive">$Title</h6>
					</a>
					<p class="articlePreview_excerpt articlePreview_excerpt-archive">$Description</p>
				</div>
			<% end_loop %>
		</div>
		<div class="g-row u-push-top-double">
			<div class="g g-12 g-6@sm g-4@md g-3@lg">
				<a href="#" class="btn u-push-btm u-push-btm-none@md" disabled>Newer</a>
			</div>
			<div class="g g-12 g-6@sm g-4@md g-3@lg g-push-4@md g-push-6@lg">
				<a href="#" class="btn">Older</a>
			</div>
		</div>
	</div>
</main>
