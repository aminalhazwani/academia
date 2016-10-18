<main class="article">
		<div class="l-container">
			<div class="article_inner">
				<header class="article_header">
					<h1 class="article_title">$Title</h1>
					<p class="article_meta">
						<a href="$Category.Link($Parent.Link)">
							<span class="article_metaItem">$Category.Title</span>
						</a>
						<span class="u-push-horz-half">|</span>
						<span>$Created.FormatI18N('%e %B %Y')</span>
					</p>
				</header>
				<% if $Image %>
					<div class="article_coverContainer">
						<img class="article_cover" src="$Image.URL" alt="#">
						<p class="article_coverCaption">$Image.Caption</p>
					</div>
				<% end_if %>
				<p class="article_excerpt">$Description</p>
				<div class="typography">$Content</div>
				<% with $Author %>
					<div class="u-push-btm-double">
						<img class="article_authorPicture" src="$Image.URL" alt="">
						<p class="article_author">$Title</p>
						<%-- <a class="article_authorContact" href="$Link">$Twitter</a> --%>
					</div>
				<% end_with %>
				<div class="u-padd-btm-double">
					<a class="btn u-push-btm-double" href="#">Load comments</a>
				</div>
			</div>
			<h4 class="u-ta-center u-push-btm">Related Articles</h4>
			<div class="g-row">
				<% loop $Related %>
					<div class="g g-12 g-3@md">
						<div class="articlePreview_inner">
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
								<h6 class="articlePreview_title">$Title</h6>
							</a>
							<p class="articlePreview_excerpt">$Description</p>
						</div>
					</div>
				<% end_loop %>
			</div>
		</div>
	</main>
