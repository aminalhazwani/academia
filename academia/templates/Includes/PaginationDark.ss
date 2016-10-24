<% if $Results.MoreThanOnePage %>
  <div class="g-row u-push-top-double">
    <div class="g g-12 g-6@sm g-4@md g-3@lg">
      <% if $Results.NotFirstPage %>
        <a href="$Results.PrevLink" class="btn btn-invert u-push-btm u-push-btm-none@md">Newer</a>
      <% else %>
        <span class="btn btn-invert u-push-btm u-push-btm-none@md" disabled>Newer</a>
      <% end_if %>
    </div>

    <div class="g g-12 g-6@sm g-4@md g-3@lg g-push-4@md g-push-6@lg">
      <% if $Results.NotLastPage %>
        <a href="$Results.NextLink" class="btn btn-invert">Older</a>
      <% else %>
        <span class="btn btn-invert" disabled>Older</span>
      <% end_if %>

    </div>
  </div>
<% end_if %>
