<p>
  <% if $PriceRange %>
    $Price.Currency
    $PriceRange.Min.Nice
  <% if $PriceRange.HasRange %>
    - $PriceRange.Max.Nice
  <% end_if %>
  <% else_if $Price %>
    $Price.Currency $Price.Nice
  <% end_if %>
</p>