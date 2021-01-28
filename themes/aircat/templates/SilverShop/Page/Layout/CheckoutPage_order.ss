<div class="width-container u-margin-top-8">
  <div class="grid-row">
    <div class="grid-column-full">
      <h1>$Title</h1>
      $Content
      <% if $Order %>
        <% with $Order %>
          <h2><%t SilverShop\Model\Order.OrderHeadline "Order #{OrderNo} {OrderDate}" OrderNo=$Reference OrderDate=$Created.Nice %></h2>
        <% end_with %>
      <% end_if %>
      <% if $Message %>
        <p>$Message</p>
      <% end_if %>
      <% if $Order %>
        <% with $Order %>
          <% include SilverShop\Model\Order %>
        <% end_with %>
        $Form
      <% end_if %>
    </div>
  </div>
</div>
