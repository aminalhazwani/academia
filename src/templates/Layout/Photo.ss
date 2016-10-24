<main class="l-main photo">
  <div class="l-container">
    <div class="u-push-btm u-push-btm-double@lg">
      <h1 class="section_title">$Title</h1>
      <% if $Slideshow %>
        <div class="carousel" data-flickity='{ "adaptiveHeight": true, "pageDots": false }'>
          <% loop $Slideshow %>
            <div class="carousel-cell">
              $Filename
              <img class="u-img-max u-push-btm-half" src="$URL" alt="#">
              <p class="photo_description">$Description</p>
            </div>
          <% end_loop %>
        </div>
      <% end_if %>
    </div>
    <h4 class="u-ta-center u-push-btm">Related Photos</h4>
    <div class="g-row g-row g-clear-2@sm">
      <% loop $Related %>
        <div class="g g-12 g-6@sm">
          <a class="photo_preview" href="$Link">
            <div class="photo_inner">
              <img class="u-img-max" src="$Image.URL" alt="#">
              <h2 class="photo_title">$Title</h2>
              <span class="photo_category">$Category.Title</span>
            </div>
          </a>
        </div>
      <% end_loop %>
    </div>
  </div>
</main>
