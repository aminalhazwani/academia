<main>
    <div class="l-container">
      <h1 class="section_title">$Title</h1>
      <div class="u-push-btm u-push-btm-half@md">
        <div class="filter">
			$SearchForm
		</div>
      </div>
      <% if $Results %>
	      <% loop $Results %>
	        <div class="podcast_item">
	          <div class="u-push-rgt u-push-rgt@sm">
	            <a href="$Link">
	              <i class="i i-play-black u-push-top-threeQuarter"></i>
	            </a>
	          </div>
	          <div>
	            <span class="podcast_type">$Category.Title</span>
	            <a href="$Link">
	              <h6 class="podcast_title">$Title</h6>
	            </a>
	            <p class="podcast_meta">
	              <span>$Created.FormatI18N('%e %B %Y')</span>
	              <span class="u-push-horz-quarter">|</span>
	              <span>$DurationDisplay</span>
	            </p>
	            <p class="u-push-btm-none">$Description</p>
	          </div>
	        </div>
	      <% end_loop %>
	      <% include Pagination %>
      <% end_if %>
    </div>
  </main>
