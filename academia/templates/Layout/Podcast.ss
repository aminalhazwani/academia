<main>
  <div class="l-container">
    <div class="u-push-btm u-push-btm-double@lg">
      <div class="podcast_header">
        <h1 class="podcastSingle_title">$Title</h1>
        <p class="podcastSingle_meta">
          <a href="#">
            <span class="podcastSingle_metaItem">$Category.Title</span>
          </a>
          <span class="u-push-horz-half">|</span>
          <span>$PublicationDatetime.FormatI18N('%e %B %Y')</span>
        </p>
      </div>
      <audio class="podcast_player" controls>
        <source src="#" type="audio/ogg">
        <source src="#" type="audio/mpeg">
        Your browser does not support the audio tag.
      </audio>
      <p class="u-push-btm-double">$Description</p>
    </div>
    <h4 class="u-ta-center u-push-btm">Related Podcasts</h4>
    <div class="g-row g-row g-clear-2@md">
      <% loop $Related %>
        <div class="g g-12 g-6@md">
          <div class="podcast_item podcast_item-archive">
            <div class="u-push-rgt-half u-push-rgt@sm">
              <a href="$Link">
                <i class="i i-play-black u-push-top-threeQuarter"></i>
              </a>
            </div>
            <div>
              <span class="podcast_type">$Category.Title</span>
              <a href="$URL">
                <h6 class="podcast_title podcast_title-archive u-td-underline-hover">$Title</h6>
              </a>
              <p class="podcast_meta u-fz-sm">
                <span>$PublicationDatetime.FormatI18N('%e %B %Y')</span>
                <span class="u-push-horz-quarter">|</span>
                <span>$Duration</span>
              </p>
            </div>
          </div>
        </div>
      <% end_loop %>
    </div>
  </div>
</main>
