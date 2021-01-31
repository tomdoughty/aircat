<div class="related-nav">
  <button class="related-nav__toggle" id="related-nav__toggle" aria-controls="related-nav__content">
    <h2 class="related-nav__heading">
      <% with $Level(1) %>$Title<% end_with %> menu
    </h2>
  </button>
  <div class="related-nav__content" id="related-nav__content">
    <% if $GroupsMenu %>
      <% include SilverShop\Includes\ProductMenu %>
    <% else %>
      <% with $Parent %>
        <% include SilverShop\Includes\ProductMenu %>
      <% end_with %>
    <% end_if %>
    <% include SilverShop\Cart\SideCart %>
  </div>
</div>
