<tr>
  <td>
    <% if $Buyable && $Buyable.Image %>
      <div>
        <a href="$Link" title="<%t SilverShop\Generic.ReadMoreTitle "Click here to read more on &quot;{Title}&quot;" Title=$Buyable.Title %>">
          <img src="$Buyable.Image.ScaleWidth(45).AbsoluteURL" alt="$Buyable.Title"/>
        </a>
      </div>
    <% end_if %>
  </td>
  <td>
    <strong>
      <% if $Link %>
        <a href="$Link" target="new">$TableTitle</a>
      <% else %>
        $TableTitle
      <% end_if %>
    </strong>
    <% if $SubTitle %><div>$SubTitle</div><% end_if %>
    <% if $Buyable.InternalItemID %><div><%t SilverShop\Page\Product.ProductCodeShort "SKU" %>: $Buyable.InternalItemID</div><% end_if %>
  </td>
  <td>$UnitPrice.Nice</td>
  <td>$Quantity</td>
  <td>$Total.Nice</td>
</tr>
