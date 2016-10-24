<header class="header u-bg-black u-c-white">
  <div class="l-container">
    <div class="g-row">
      <div class="g g-12 g-6@sm">
        <p class="header_logo">
          <a href="$BaseURLForLocale($CurrentLocale)">
            $SiteConfig.Title
          </a>
        </p>
      </div>
      <div class="g g-12 g-6@sm">
        <nav class="nav">
          <% loop $Menu(1) %>
            <a class="nav_item nav_item-$LinkingMode" href="$Link">$MenuTitle.RAW</a>
          <% end_loop %>
        </nav>
      </div>
    </div>
  </div>
</header>
