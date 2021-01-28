<% if $Products.MoreThanOnePage %>
  <p>
    <%t SilverShop\Includes\ProductGroup.Page "Page" %>:
    <% if $Products.NotFirstPage %>
      <a href="$Products.PrevLink" title="<%t SilverShop\Includes\ProductGroup.ViewPrevious "View the previous page" %>"><%t SilverShop\Includes\ProductGroup.Previous "Previous" %></a>
    <% end_if %>
    <% loop $Products.PaginationSummary(4) %>
      <% if $CurrentBool %>
        $PageNum
      <% else %>
        <% if $Link %>
          <a href="$Link" title="<%t SilverShop\Includes\ProductGroup.ViewPage "View page number {pageNum}" pageNum=$PageNum %>">$PageNum</a>
        <% else %>
          &hellip;
        <% end_if %>
      <% end_if %>
    <% end_loop %>
    <% if $Products.NotLastPage %>
      <a href="$Products.NextLink" title="<%t SilverShop\Includes\ProductGroup.ViewNext "View the next page" %>"><%t SilverShop\Includes\ProductGroup.Next "Next" %></a>
    <% end_if %>
  </p>
<% end_if %>
