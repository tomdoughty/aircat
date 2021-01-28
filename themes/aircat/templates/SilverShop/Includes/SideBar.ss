<div class="related-nav">
  <h2 class="related-nav__heading">
    <% with $Level(1) %>$Title<% end_with %> menu
  </h2>
  <% if $GroupsMenu %>
    <% include SilverShop\Includes\ProductMenu %>
  <% else %>
    <% with $Parent %>
      <% include SilverShop\Includes\ProductMenu %>
    <% end_with %>
  <% end_if %>
  <% include SilverShop\Cart\SideCart %>
</div>
