<div>
  <% if $DiscountedPrice %>
    <span>
      <span>$Price.Symbol</span>
      <strong>$Price.Main</strong>
      <small>$Price.Fractional</small>
      <span>$Price.CurrencyCode</span>
    </span>
    <span>$DiscountedPrice.Nice</span> <%t SilverShop\Includes\PriceTag.SAVE "Save" %>: <span>$DiscountedPrice.Savings</span>
  <% else %>
    <span><strong>$Price.Nice</strong></span>
  <% end_if %>
  <% if $RecommendedPrice %><span>$RecommendedPrice.Nice</span><% end_if %>
</div>
