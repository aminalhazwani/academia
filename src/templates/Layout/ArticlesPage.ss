<main>
	<div class="l-container">
		<h1 class="section_title">$Title</h1>
		<div class="u-push-btm u-push-btm-half@md">
			<div class="filter">
				$SearchForm2
			</div>
		</div>
		<% if $Results %>
			<div class="articlePreview">
				<p>Showing $Results.PageLength results ($Results.getTotalItems total)</p>
				<% loop $Results %>
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
			<% include Pagination %>
		<% end_if %>
	</div>
</main>
