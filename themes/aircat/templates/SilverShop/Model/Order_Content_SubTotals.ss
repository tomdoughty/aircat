<tfoot>
  <tr>
    <td colspan="3" scope="row" class="threeColHeader subtotal"><%t SilverShop\Model\Order.SubTotal "Sub-total" %></td>
    <td class="right">$SubTotal.Nice</td>
  </tr>
  <% loop $Modifiers %>
    <% if $ShowInTable %>
      <tr>
        <td colspan="3" scope="row">$TableTitle</td>
        <td>$TableValue.Nice</td>
      </tr>
    <% end_if %>
  <% end_loop %>
  <tr>
    <td colspan="3" scope="row"><%t SilverShop\Model\Order.Total "Total" %></td>
    <td>$Total.Nice $Currency</td>
  </tr>
</tfoot>
