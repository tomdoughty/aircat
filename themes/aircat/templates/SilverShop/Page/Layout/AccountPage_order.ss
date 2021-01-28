<div class="width-container u-margin-top-8">
  <div class="grid-row">
    <div class="grid-column-two-thirds">
      <h1>$Title</h1>
      $Content
      <% if $Order %>
        <% with $Order %>
            <h2><%t SilverShop\Model\Order.OrderHeadline "Order #{OrderNo} {OrderDate}" OrderNo=$Reference OrderDate=$Created.Nice %></h2>
        <% end_with %>
      <% end_if %>
      <% if $Message %>
          <p class="message $MessageType">$Message</p>
      <% end_if %>
      <% if $Order %>
          <% with $Order %>
              <% include SilverShop\Model\Order %>
          <% end_with %>
          $ActionsForm
      <% end_if %>
    </div>
    <div class="grid-column-one-third">
      <% include SilverShop\Includes\AccountNavigation %>
    </div>
  </div>
</div>
