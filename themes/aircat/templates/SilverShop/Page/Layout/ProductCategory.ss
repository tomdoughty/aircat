<div class="hero hero--image hero--image-description">
  <div class="width-container hero__overlay">
    <h1>$Title</h1>
    $Content
  </div>
</div>

<div class="width-container">
  <div class="grid-row">
    <div class="grid-column-one-third">
      <% include SilverShop\Includes\SideBar %>
    </div>
    <div class="grid-column-two-thirds">
      <div class="u-margin-bottom-5">$Breadcrumbs</div>
      <% if $Products %>
        <ul class="list list--border u-padding-top-4 ">
          <% loop $Products %>
            <% include SilverShop\Includes\ProductGroupItem %>
          <% end_loop %>
        </ul>
        <% include SilverShop\Includes\ProductGroupPagination %>
      <% end_if %>
    </div>
  </div>
</div>
