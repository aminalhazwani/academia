<footer class="footer">
  <%-- SUBSCRIBE --%>
  <% if $SiteConfig.SubscribeImage %>
    <% with $SiteConfig %>
      <div class="footer_subscribe">
        <div class="l-container">
          <div class="g-row">
            <div class="g g-12 g-6@md u-push-btm-double u-push-btm-none@md u-push-top-double@lg">
              <h5 class="u-push-btm">$SubscribeTitle</h5>
              <p class="u-push-btm-quarter">$SubscribeEmail</p>
              <p class="u-fz-small">$SubscribePrivacy</p>
            </div>
            <div class="g g-12 g-6@md">
              <img class="u-img-max" src="$SubscribeImage.URL" alt="#">
            </div>
          </div>
        </div>
      </div>
    <% end_with %>
  <% end_if %>

  <div class="footer_links">
    <div class="l-container">
      <div class="g-row">
        <div class="g g-12 g-3@sm g-4@lg u-push-btm">
          <p class="u-fw-600 u-tt-uppercase u-push-btm-quarter">Follow us</p>
          <% loop $MenuSet('Social').MenuItems %>
            <a class="footer_link u-d-blk u-push-btm-2 $LinkingMode" href="$Link" <%if $IsNewWindow %>target="_blank"<% end_if %>>$MenuTitle</a>
          <% end_loop %>
        </div>
        <div class="g g-12 g-3@sm g-2@lg u-push-btm">
          <% loop $MenuSet('Footer').MenuItems %>
            <p class="u-push-btm-2">
              <a class="footer_link $LinkingMode" href="$Link" <%if $IsNewWindow %>target="_blank"<% end_if %>>$MenuTitle</a>
            </p>
          <% end_loop %>
        </div>
        <div class="g g-12 g-3@sm g-2@lg u-push-btm">
          <% loop $MenuSet('Legal').MenuItems %>
            <p class="u-push-btm-2">
              <a class="footer_link $LinkingMode" href="$Link" <%if $IsNewWindow %>target="_blank"<% end_if %>>$MenuTitle</a>
            </p>
          <% end_loop %>
        </div>
        <div class="g g-12 g-3@sm g-4@lg">
          <p class="u-push-btm-2">© 2016 Academia</p>
          <p class="u-push-btm-2">Website by <a href="http://aminalhazwani.com/" target="_blank">Amin Al Hazwani</a></p>
          <p class="u-push-btm-2">Development by <a href="https://arillo.net" target="_blank">Arillo</a></p>
        </div>
      </div>
  </div>
  </div>
</footer>
