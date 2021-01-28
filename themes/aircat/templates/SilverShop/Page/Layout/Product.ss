<div class="width-container u-margin-top-8">
  <div class="grid-row">

    <div class="grid-column-one-third">
      <% include SilverShop\Includes\SideBar %>
    </div>

    <div class="grid-column-two-thirds">
      <p>$Breadcrumbs</p>
      
      <h1>$Title</h1>
      
      <% if $ImageUrl %>
        <img class="image" src="$ImageUrl" alt="<%t SilverShop\Page\Product.ImageAltText "{Title} image" Title=$Title %>" />
      <% end_if %>
      
      <% if $InternalItemID %>
        <p class="InternalItemID">
          <span class="title"><%t SilverShop\Page\Product.Code "Product Code" %>:</span>
          <span class="value">{$InternalItemID}</span>
        </p>
      <% end_if %>
      
      <% if $Model %>
        <p class="Model">
          <span class="title"><%t SilverShop\Page\Product.Model "Model" %>:</span>
          <span class="value">$Model.XML</span>
        </p>
      <% end_if %>
      
      <% if $Size %>
        <p class="Size">
          <span class="title"><%t SilverShop\Page\Product.Size "Size" %>:</span>
          <span class="value">$Size.XML</span>
        </p>
      <% end_if %>

      <% include SilverShop\Includes\Price %>
      
      <% if $IsInCart %>
          <p class="NumItemsInCart">
              <% if $Item.Quantity == 1 %>
                  <%t SilverShop\Page\Product.NumItemsInCartSingular "You have this item in your cart" %>
              <% else %>
                  <%t SilverShop\Page\Product.NumItemsInCartPlural "You have {Quantity} items in your cart" Quantity=$Item.Quantity %>
              <% end_if %>
          </p>
      <% end_if %>
    
      $Form
      $Content

    </div>
  </div>
</div>

