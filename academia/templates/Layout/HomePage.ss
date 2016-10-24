<main>

  <%-- HIGHLIGHT ARTICLE --%>
  <% if $HighlightArticle %>
    <% with $HighlightArticle %>
      <section class="hero u-push-btm u-push-btm-double@md">
        <div class="l-container">
          <div class="hero_inner">
            <span class="hero_category">$Category.Title</span>
            <a href="$Link">
              <h2 class="hero_title">$Title</h2>
            </a>
            <img class="u-d-blk u-img-max" src="$Image.URL" alt="#">
            <p class="hero_author">$Author.Title</p>
          </div>
        </div>
      </section>
    <% end_with %>
  <% end_if %>

  <%-- LATEST ARTICLES --%>
  <% if $LatestArticles %>
    <section class="u-padd-top u-padd-btm u-padd-btm-double@md">
      <div class="l-container">
        <h4 class="u-ff-sans u-fz-sm u-tt-uppercase u-fw-600 u-ta-center u-push-btm">Recent Stories</h4>
        <div class="g-row">
          <% loop $LatestArticles %>
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
    </section>
  <% end_if %>

  <%-- BOOK OF THE WEEK --%>
  <% if $HighlightBook %>
    <% with $HighlightBook %>
      <section class="u-bg-gray-light u-padd-top u-padd-btm u-padd-btm-double@md">
        <div class="l-container">
          <h4 class="u-ff-sans u-fz-sm u-tt-uppercase u-fw-600 u-ta-center u-push-top u-push-btm-double">Book of the week</h4>
          <div class="g-row g-row g-clear-2@sm">
            <div class="g g-12 g-4@sm g-3@md">
              <% if $Image %>
                <img class="book_cover" src="$Image.URL" alt="#">
              <% end_if %>
              <p class="u-fz-sm u-c-gray-mid u-ff-sans u-push-btm-none">$Information</p>
              <%--
              <p class="u-fz-sm u-c-gray-mid u-ff-sans u-push-btm-none">$Author.Title</p>
              <p class="u-fz-sm u-c-gray-mid u-ff-sans u-push-btm-none">
                <span>$Year, </span>
                <span>$Pages</span>
              </p>
              <p class="u-fz-sm u-c-gray-mid u-ff-sans">
                ISBN: <span>$ISBN</span>
              </p>
              --%>
            </div>
            <div class="g g-12 g-8@sm g-9@md">
              <span class="articlePreview_type u-d-blk u-push-btm-quarter">$Editor</span>
              <h2 class="u-h5 u-td-underline-hover">
                <a href="$URL" target="_blank">
                  $Title
                </a>
              </h2>
              <h3 class="u-h6 u-push-btm">$SubTitle</h3>
              <p class="book_abstract">$Description</p>
            </div>
          </div>
        </div>
      </section>
    <% end_with %>
  <% end_if %>

  <%-- LATEST PHOTOS --%>
  <% if $LatestPhotos %>
    <section class="u-bg-gray-dark u-padd-top u-padd-btm">
      <div class="l-container">
        <h4 class="u-ff-sans u-fz-sm u-tt-uppercase u-fw-600 u-ta-center u-push-btm u-c-white u-push-top u-push-btm-double">Latest Photo Projects</h4>
        <div class="g-row g-row g-clear-2@sm">
          <% loop $LatestPhotos %>
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
    </section>
  <% end_if %>

  <%-- LATEST MOVIES --%>
  <% if $LatestMovies %>
    <section class="u-bg-gray-dark u-padd-top u-padd-btm u-push-btm-double">
      <div class="l-container">
        <h4 class="u-ff-sans u-fz-sm u-tt-uppercase u-fw-600 u-ta-center u-push-btm u-c-white u-push-top u-push-btm-double">Latest Movies</h4>
        <div class="g-row g-row g-clear-2@sm g-clear-4@md">
          <% loop $LatestMovies %>
            <div class="g g-12 g-6@sm g-3@md">
              <a class="movie_poster" href="$Link">
                <img class="u-img-max" src="$Image.URL" alt="#">
              </a>
              <a href="$Link">
                <h2 class="movie_title-small u-c-white">$Title</h2>
              </a>
              <p class="movie_plays">$PlayCount</p>
            </div>
          <% end_loop %>
        </div>
      </div>
    </section>
  <% end_if %>

  <%-- LATEST PODCASTS --%>
  <% if $LatestPodcasts %>
    <section class="u-push-btm-double">
      <div class="l-container">
        <h4 class="u-ff-sans u-fz-sm u-tt-uppercase u-fw-600 u-ta-center u-push-btm">Latest Podcasts</h4>
        <div class="g-row g-row g-clear-2@md">
          <% loop $LatestPodcasts %>
          <div class="g g-12 g-6@md">
            <div class="podcast_item podcast_item-archive">
              <div class="u-push-rgt-half u-push-rgt@sm">
                <a href="$Link">
                  <i class="i i-play-black u-push-top-threeQuarter"></i>
                </a>
              </div>
              <div>
                <span class="podcast_type">$Category.Title</span>
                <a href="$Link">
                  <h6 class="podcast_title podcast_title-archive u-td-underline-hover">$Title</h6>
                </a>
                <p class="podcast_meta u-fz-sm">
                  <span>$PublicationDatetime.FormatI18N('%e %B %Y')</span>
                  <span class="u-push-horz-quarter">|</span>
                  <span>$DurationDisplay</span>
                </p>
              </div>
            </div>
          </div>
          <% end_loop %>
        </div>
      </div>
    </section>
  <% end_if %>

  <%-- EVENTS --%>
  <%--
  <section class="u-push-btm">
    <div class="l-container">
      <h4 class="u-ff-sans u-fz-sm u-tt-uppercase u-fw-600 u-ta-center u-push-btm">Upcoming Events</h4>
        <% loop LatestEvents %>
          <div class="g-row">
            {% if item.image == 'true' %}
              <div class="g g-12 g-4@sm">
                <a class="event" href="$Link">
                  <div class="event_picture">
                    <span class="event_organiser">{{ item.organiser }}</span>
                    <img class="u-img-max u-push-btm@sm" src="{{ item.picture }}" alt="#">
                  </div>
                </a>
              </div>
              <div class="g g-12 g-8@sm">
                <a href="$Link">
                  <h6 class="u-td-underline-hover">$Title</h6>
                </a>
                <p class="u-fz-sm u-push-btm">{{ item.excerpt | safe }}</p>
                <p class="event_date">{{ item.date }}</p>
              </div>
            {% else %}
              <div class="g g-12 g-8@sm">
                <span class="event_organiser-gray">{{ item.organiser }}</span>
                <a href="$Link">
                  <h6 class="u-td-underline-hover">$Title</h6>
                </a>
                <p class="u-fz-sm u-push-btm">{{ item.excerpt | safe }}</p>
                <p class="event_date">{{ item.date }}</p>
              </div>
            {% endif %}
          </div>
        <% end_loop %>
    </div>
  </section>

  --%>
  <%-- QUOTE --%>
  <% if $HighlightQuote %>
    <% with $HighlightQuote %>
      <section class="u-bg-gray-light u-padd-top u-padd-btm u-padd-btm-double@md u-push-btm-double">
        <div class="l-container">
          <% include Quote %>
        </div>
      </section>
    <% end_with %>
  <% end_if %>

  <%-- HIGHLIGHT STRIP --%>
  <% if $HighlightStrip %>
    <% with $HighlightStrip %>
      <section class="u-push-btm u-push-btm-double@md">
        <div class="l-container">
          <h4 class="u-ff-sans u-fz-sm u-tt-uppercase u-fw-600 u-ta-center u-push-btm">Academia Strips</h4>
          <img class="u-img-max" src="$Image.URL" alt="#">
        </div>
      </section>
    <% end_with %>
  <% end_if %>

</main>
