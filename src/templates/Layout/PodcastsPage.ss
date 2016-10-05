<main>
    <div class="l-container">
      <h1 class="section_title">Podcasts</h1>
      <div class="u-push-btm u-push-btm-half@md">
        {% include "shared/filters.html" %}
      </div>
      {% for item in podcasts %}
        <div class="podcast_item">
          <div class="u-push-rgt u-push-rgt@sm">
            <a href="{{ item.url }}">
              <i class="i i-play-black u-push-top-threeQuarter"></i>
            </a>
          </div>
          <div>
            <span class="podcast_type">{{ item.category }}</span>
            <a href="{{ item.url }}">
              <h6 class="podcast_title">{{ item.title }}</h6>
            </a>
            <p class="podcast_meta">
              <span>{{ item.date }}</span>
              <span class="u-push-horz-quarter">|</span>
              <span>{{ item.duration }}</span>
            </p>
            <p class="u-push-btm-none">{{ item.description | safe }}</p>
          </div>
        </div>
      {% endfor %}
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
