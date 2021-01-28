<div class="width-container u-margin-top-8">
  <div class="grid-row">
    <div class="grid-column-full">
      <div class="u-reading-width">
        <h1>Search results for $Query()</h1>
        <% if $Results %>
          <ul class="list list--border u-padding-top-4">
            <% loop $Results %>
              <li class="u-padding-bottom-4 u-margin-bottom-4">
                <h2 class="heading-m u-margin-bottom-4"><a href="$Link">$Title</a></h2>
                <% if $Content %>
                  <p class="body-s u-margin-bottom-0">$Content.LimitWordCount(40)</p>
                <% end_if %>
              </li>
            <% end_loop %>
          </ul>
          <% if $Results.MoreThanOnePage %>
            <% if $Results.NotFirstPage %>
                <a class="prev" href="$Results.PrevLink">Prev</a>
            <% end_if %>
            <% loop $Results.PaginationSummary %>
                <% if $CurrentBool %>
                    $PageNum
                <% else %>
                    <% if $Link %>
                        <a href="$Link">$PageNum</a>
                    <% else %>
                        ...
                    <% end_if %>
                <% end_if %>
            <% end_loop %>
            <% if $Results.NotLastPage %>
                <a class="next" href="$Results.NextLink">Next</a>
            <% end_if %>
        <% end_if %>
        <% else %>
          <h2>No results found for $Query</h2>
          <p>You could try:</p>
          <ul>
            <li>checking your spelling</li>
            <li>searching again using other words</li>
          </ul>
        <% end_if %>
      </div>
    </div>
  </div>
</div>
