<main class="photo">
  <div class="l-container">
    <h1 class="section_title">$Title</h1>
    <div class="u-push-btm u-push-btm-half@md">
      <div class="filter">
        $SearchForm(true)
      </div>
    </div>
    <% if $Results %>
      <div class="g-row g-clear-2@sm">
        <% loop $Results %>
          <div class="g g-12 g-6@sm">
            <a class="photo_preview" href="$link">
              <div class="photo_inner">
                <img class="u-img-max" src="$Image.URL" alt="#">
                <h2 class="photo_title">$Title</h2>
                <span class="photo_category">$Category.Title</span>
              </div>
            </a>
          </div>
        <% end_loop %>
      </div>
      <% include PaginationDark %>
    <% end_if %>
  </div>
</main>
