<main class="article">
  <div class="l-container">
    <div class="article_inner">
      <header class="article_header">
        <h1 class="article_title">$Title</h1>
        <p class="article_meta">
          <% if $Categories %>
            <% loop $Categories %>
              <a href="$Link($Up.Parent.Link)"><span class="article_metaItem">$Title</span></a><% if not Last %>, <% end_if %>
            <% end_loop %>
          <% end_if %>
          <span class="u-push-horz-half">|</span>
          <span>$PublicationDatetime.FormatI18N('%e %B %Y')</span>
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

      <% if $Author %>
        <% with $Author %>
          <% include Author %>
        <% end_with %>
      <% end_if %>

      <% if $AllowComments %>
        <div class="u-padd-btm-double">
          <a class="btn u-push-btm-double" href="#">Load comments</a>
        </div>
      <% end_if %>
    </div>
    <h4 class="u-ta-center u-push-btm">Related Articles</h4>
    <div class="g-row">
      <% loop $Related %>
        <div class="g g-12 g-3@md">
          <div class="articlePreview_inner">
            <% if $Image %>
              <a href="$Link">
                <div class="articlePreview_picture">
                  <span class="articlePreview_type articlePreview_type-white">$Type.Title</span>
                  <img class="articlePreview_cover" src="$Image.URL" alt="#">
                </div>
              </a>
            <% else %>
              <span class="articlePreview_type">$Type.Title</span>
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
