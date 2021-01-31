<li class="grid-row u-padding-bottom-4 u-margin-bottom-4">

   <% if $ImageUrl %>
    <div class="grid-column-one-third">
      <img src="$ImageUrl" alt="<%t SilverShop\Page\Product.ImageAltText "{Title} image" Title=$Title %>" class="image__img u-margin-bottom-3">
    </div>
    <div class="grid-column-two-thirds">
  <% else %>
    <div class="grid-column-full">
  <% end_if %>

    <h2 class="heading-m u-margin-bottom-4">
      <a href="$Link">$Title</a>
    </h2>
    
    <% if $Model %>
      <p class="body-s u-margin-bottom-3"><strong><%t SilverShop\Page\Product.Model "Model" %>:</strong> $Model.XML</p>
    <% end_if %>

    <% include SilverShop\Includes\Price %>
    
    <% if $View %>
      <a href="$Link">
        <%t SilverShop\Page\Product.View "View Product" %>
      </a>
    <% else %>
      <% if $canPurchase %>
        <a href="/{$addLink}" class="button u-margin-bottom-0">
          <%t SilverShop\Page\Product.AddToCart "Add to Cart" %>
        </a>
      <% end_if %>
    <% end_if %>

  </div>
</li>
