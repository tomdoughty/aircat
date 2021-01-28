<table>
  <thead>
    <tr>
      <th><%t SilverShop\Model\Order.db_Reference 'Reference' %></th>
      <th><%t SilverShop\Model\Order.Date 'Date' %></th>
      <th><%t SilverShop\Model\Order.has_many_Items 'Items' %></th>
      <th><%t SilverShop\Model\Order.Total 'Total' %></th>
      <th><%t SilverShop\Model\Order.db_Status 'Status' %></th>
      <th></th>
    </tr>
  </thead>
  <tbody>
    <% loop $PastOrders %>
      <tr class="{$Status}">
        <td>$Reference</td>
        <td>$Created.Nice</td>
        <td>$Items.Quantity</td>
        <td>$Total.Nice</td>
        <td>$StatusI18N</td>
        <td>
          <a href="$Link">
            <%t SilverShop\Generic.View 'View' %>
          </a>
        </td>
      </tr>
    <% end_loop %>
  </tbody>
</table>
