<h3 class="related-nav__sub-heading">
    <%t SilverShop\Cart\ShoppingCart.Headline "Shopping cart" %>
</h3>

<% if $Cart %>
  <% with $Cart %>
    <p>
      <% if $Items.Plural %>
          <%t SilverShop\Cart\ShoppingCart.ItemsInCartPlural 'There are <a href="{link}">{quantity} items</a> in your cart.' link=$Top.CartLink quantity=$Items.Quantity %>
      <% else %>
          <%t SilverShop\Cart\ShoppingCart.ItemsInCartSingular 'There is <a href="{link}">1 item</a> in your cart.' link=$Top.CartLink %>
      <% end_if %>
    </p>
    <ul class="list">
      <% loop $Items %>
        <li>
          <a href="$Product.Link" title="<%t SilverShop\Generic.ReadMoreTitle "Click here to read more on &quot;{Title}&quot;" Title=$Title %>">
              $TableTitle
          </a>
          <p>
            $Quantity x $UnitPrice.Nice</br>
            <a href="/{$removeallLink}" title="<%t SilverShop\Cart\ShoppingCart.RemoveTitle "Remove &quot;{Title}&quot; from your cart." Title=$TableTitle %>">Remove</a>
          </p>
        </li>
      <% end_loop %>
    </ul>
    <a class="button" href="$Top.CheckoutLink"><%t SilverShop\Cart\ShoppingCart.Checkout "Checkout" %></a>
  <% end_with %>
<% else %>
  <p><%t SilverShop\Cart\ShoppingCart.NoItems "There are no items in your cart." %></p>
<% end_if %>
