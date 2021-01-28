<div class="width-container u-margin-top-8">
  <div class="grid-row">
    <div class="grid-column-full">
      <h1>$Title</h1>
      $Content

      <% if $Cart %>
        <% if $CartForm %>
          $CartForm
        <% else %>
          <% with $Cart %><% include SilverShop\Cart\Cart Editable=true %><% end_with %>
        <% end_if %>
      <% else %>
        <p class="message warning"><%t SilverShop\Cart\ShoppingCart.NoItems "There are no items in your cart." %></p>
      <% end_if %>
    
      <% if $ContinueLink %>
        <a class="continuelink button" href="$ContinueLink">
          <%t SilverShop\Cart\ShoppingCart.ContinueShopping 'Continue Shopping' %>
        </a>
      <% end_if %>
      
      <% if $Cart %>
        <% if $CheckoutLink %>
          <a class="checkoutlink button" href="$CheckoutLink">
            <%t SilverShop\Cart\ShoppingCart.ProceedToCheckout 'Proceed to Checkout' %>
          </a>
        <% end_if %>
      <% end_if %>
    </div>
  </div>
</div>
