<% if $Items %>
  <table summary="<%t SilverShop\Cart\ShoppingCart.TableSummary "Current contents of your cart." %>">
    <colgroup>
      <col class="product title"/>
      <col class="unitprice" />
      <col class="quantity" />
      <col class="total"/>
      <col class="remove"/>
    </colgroup>
    <thead>
      <tr>
        <th scope="col"><%t SilverShop\Page\Product.SINGULARNAME "Product" %></th>
        <th scope="col"><%t SilverShop\Model\Order.UnitPrice "Unit Price" %></th>
        <th scope="col"><%t SilverShop\Model\Order.Quantity "Quantity" %></th>
        <th scope="col"><%t SilverShop\Model\Order.TotalPriceWithCurrency "Total Price ({Currency})" Currency=$Currency %></th>
        <% if $Editable %>
          <th scope="col"><%t SilverShop\Generic.Remove "Remove" %></th>
        <% end_if %>
      </tr>
    </thead>
    <tbody>
      <% loop $Items %>
        <% if $ShowInTable %>
          <tr>
            <td>
              <h3>
                <% if $Link %>
                  <a href="$Link" title="<%t SilverShop\Generic.ReadMoreTitle "Click here to read more on &quot;{Title}&quot;" Title=$TableTitle %>">$TableTitle</a>
                <% else %>
                  $TableTitle
                <% end_if %>
              </h3>
              <% if $SubTitle %>
                <p>$SubTitle</p>
              <% end_if %>
              <% if $Product.Variations && $Up.Editable %>
                <%t SilverShop\Generic.Change "Change" %>: $VariationField
              <% end_if %>
            </td>
            <td>$UnitPrice.Nice</td>
            <td><% if $Up.Editable %>$QuantityField<% else %>$Quantity<% end_if %></td>
            <td id="$TableTotalID">$Total.Nice</td>
            <% if $Up.Editable %>
              <td>
                  <a href="/{$removeallLink}" title="<%t SilverShop\Cart\ShoppingCart.RemoveAllTitle "Remove all of &quot;{Title}&quot; from your cart" Title=$TableTitle %>">
                    Remove
                  </a>
              </td>
            <% end_if %>
          </tr>
        <% end_if %>
      <% end_loop %>
   </tbody>
   <tfoot>
      <tr>
        <th colspan="3" scope="row"><%t SilverShop\Model\Order.SubTotal "Sub-total" %></th>
        <td id="$TableSubTotalID">$SubTotal.Nice</td>
        <% if $Editable %>
          <td>&nbsp;</td>
        <% end_if %>
      </tr>
      <% if $ShowSubtotals %>
        <% if $Modifiers %>
          <% loop $Modifiers %>
            <% if $ShowInTable %>
              <tr>
                <th colspan="3" scope="row">
                  <% if $Link %>
                    <a href="$Link" title="<%t SilverShop\Generic.ReadMoreTitle "Click here to read more on &quot;{Title}&quot;" Title=$TableTitle %>">$TableTitle</a>
                  <% else %>
                    $TableTitle
                  <% end_if %>
                </th>
                <td>$TableValue.Nice</td>
                <% if $Up.Editable %>
                  <td>
                    <% if $CanRemove %>
                      <strong>
                        <a class="ajaxQuantityLink" href="$removeLink" title="<%t SilverShop\Cart\ShoppingCart.RemoveTitle "Remove &quot;{Title}&quot; from your cart." Title=$TableTitle %>">
                          <img src="$resourceURL('silvershop/core:client/dist/images/remove.gif')" alt="x"/>
                        </a>
                      </strong>
                    <% end_if %>
                  </td>
                <% end_if %>
              </tr>
              <% if $Form %>
                <tr>
                  <td colspan="5">$Form</td>
                  <td colspan="10"></td>
                </tr>
              <% end_if %>
            <% end_if %>
          <% end_loop %>
        <% end_if %>
        <tr>
          <th colspan="3" scope="row"><%t SilverShop\Model\Order.Total "Total" %></th>
          <td>$Total.Nice $Currency</td>
          <% if $Editable %>
            <td>&nbsp;</td>
          <% end_if %>
        </tr>
      <% end_if %>
    </tfoot>
  </table>
<% else %>
  <p>
    <%t SilverShop\Cart\ShoppingCart.NoItems "There are no items in your cart." %>
  </p>
<% end_if %>