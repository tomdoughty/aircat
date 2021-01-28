<div class="width-container u-margin-top-8">
  <div class="grid-row">
    <div class="grid-column-full">
      <h1>$Title</h1>

      <% if $PaymentErrorMessage %>
        <p class="message error">
          <%t SilverShop\Page\CheckoutPage.PaymentErrorMessage 'Received error from payment gateway:' %>
          $PaymentErrorMessage
        </p>
      <% end_if %>

      $Content
      
      <% if $Cart %>
        <% with $Cart %>
            <% include SilverShop\Cart\Cart ShowSubtotals=true %>
        <% end_with %>
        <div class="u-reading-width">
          $OrderForm
        </div>
      <% else %>
          <p class="message warning"><%t SilverShop\Cart\ShoppingCart.NoItems "There are no items in your cart." %></p>
      <% end_if %>
    </div>
  </div>
</div>
