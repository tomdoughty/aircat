<tr>
  <td scope="row">
    <% if $Link %>
      <a href="$Link" title="<%t SilverShop\Generic.ReadMoreTitle "Click here to read more on &quot;{Title}&quot;" Title=$TableTitle %>">$TableTitle</a>
    <% else %>
      $TableTitle
    <% end_if %>
    <% if $SubTitle %>
      <span>$SubTitle</span>
    <% end_if %>
  </td>
  <td>$UnitPrice.Nice</td>
  <td>$Quantity</td>
  <td>$Total.Nice</td>
</tr>
