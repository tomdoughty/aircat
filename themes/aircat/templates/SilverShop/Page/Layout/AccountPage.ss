<div class="width-container u-margin-top-8">
  <div class="grid-row">
    <div class="grid-column-two-thirds">
      <h1>$Title</h1>
      $Content
      <h2><%t SilverShop\Page\AccountPage.PastOrders 'Past Orders' %></h2>
      <% with $Member %>
        <% if $PastOrders %>
          <% include SilverShop\Includes\OrderHistory %>
        <% else %>
          <p><%t SilverShop\Page\AccountPage.NoPastOrders 'No past orders found.' %></p>
        <% end_if %>
      <% end_with %>
    </div>
    <div class="grid-column-one-third">
      <% include SilverShop\Includes\AccountNavigation %>
    </div>
  </div>
</div>
